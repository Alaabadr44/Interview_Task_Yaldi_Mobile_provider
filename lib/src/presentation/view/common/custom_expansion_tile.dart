// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../core/utils/extension.dart';

const Duration _kExpand = Duration(milliseconds: 200);

/// A single-line [ListTile] with a trailing button that expands or collapses
/// the tile to reveal or hide the [children].
///
/// This widget is typically used with [ListView] to create an
/// "expand / collapse" list entry. When used with scrolling widgets like
/// [ListView], a unique [PageStorageKey] must be specified to enable the
/// [CustomExpansionTile] to save and restore its expanded state when it is scrolled
/// in and out of view.
///
/// See also:
///
///  * [ListTile], useful for creating expansion tile [children] when the
///    expansion tile represents a sublist.
///  * The "Expand/collapse" section of
///    <https://material.io/guidelines/components/lists-controls.html>.
class CustomExpansionTile extends StatefulWidget {
  /// Creates a single-line [ListTile] with a trailing button that expands or collapses
  /// the tile to reveal or hide the [children]. The [initiallyExpanded] property must
  /// be non-null.
  const CustomExpansionTile({
    super.key,
    this.headerBackgroundColor = Colors.transparent,
    this.leading,
    required this.title,
    this.backgroundColor = Colors.transparent,
    this.iconColor,
    this.onExpansionChanged,
    this.children = const <Widget>[],
    this.trailing,
    this.initiallyExpanded = false,
    this.border,
    this.bodyPadding,
    this.expansionMargin,
    this.expansionRadius,
    this.borderColor,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.headerPadding,
  }) : assert(initiallyExpanded != null && (border != null || borderColor != null));

  /// A widget to display before the title.
  ///
  /// Typically a [CircleAvatar] widget.
  final Widget? leading;

  /// The primary content of the list item.
  ///
  /// Typically a [Text] widget.
  final Widget title;

  /// Called when the tile expands or collapses.
  ///
  /// When the tile starts expanding, this function is called with the value
  /// true. When the tile starts collapsing, this function is called with
  /// the value false.
  final ValueChanged<bool>? onExpansionChanged;

  /// The widgets that are displayed when the tile expands.
  ///
  /// Typically [ListTile] widgets.
  final List<Widget>? children;

  /// The color to display behind the sublist when expanded.
  final Color? backgroundColor;

  /// The color to display the background of the header.
  final Color? headerBackgroundColor;

  /// The color to display the icon of the header.
  final Color? iconColor;

  /// A widget to display instead of a rotating arrow icon.
  final Widget? trailing;

  /// Specifies if the list tile is initially expanded (true) or collapsed (false, the default).
  final bool? initiallyExpanded;
  final BoxBorder? border;
  final Color? borderColor;
  final EdgeInsetsGeometry? bodyPadding;
  final EdgeInsetsGeometry? headerPadding;
  final EdgeInsetsGeometry? expansionMargin;
  final BorderRadiusGeometry? expansionRadius;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;

  @override
  CustomExpansionTileState createState() => CustomExpansionTileState();
}

class CustomExpansionTileState extends State<CustomExpansionTile> with SingleTickerProviderStateMixin {
  static final Animatable<double> _easeOutTween = CurveTween(curve: Curves.easeOut);
  static final Animatable<double> _easeInTween = CurveTween(curve: Curves.easeIn);
  static final Animatable<double> _halfTween = Tween<double>(begin: 0.0, end: 0.5);

  // final ColorTween _borderColorTween = ColorTween();
  final ColorTween _headerColorTween = ColorTween();
  final ColorTween _iconColorTween = ColorTween();
  final ColorTween _backgroundColorTween = ColorTween();

  late AnimationController _controller;
  late Animation<double> _iconTurns;
  late Animation<double> _heightFactor;
  // late Animation<Color?> _borderColor;
  // late Animation<Color?> _headerColor;
  late Animation<Color?> _iconColor;
  late Animation<Color?> _backgroundColor;

  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: _kExpand, vsync: this);
    _heightFactor = _controller.drive(_easeInTween);
    _iconTurns = _controller.drive(_halfTween.chain(_easeInTween));
    // _borderColor = _controller.drive(_borderColorTween.chain(_easeOutTween));
    // _headerColor = _controller.drive(_headerColorTween.chain(_easeInTween));
    _iconColor = _controller.drive(_iconColorTween.chain(_easeInTween));
    _backgroundColor = _controller.drive(_backgroundColorTween.chain(_easeOutTween));

    _isExpanded = PageStorage.of(context).readState(context) ?? widget.initiallyExpanded;
    if (_isExpanded) _controller.value = 1.0;
  }

  @override
  void didUpdateWidget(covariant CustomExpansionTile oldWidget) {
    if (widget.initiallyExpanded != oldWidget.initiallyExpanded) {
      _isExpanded = PageStorage.of(context).readState(context) ?? widget.initiallyExpanded;
      if (_isExpanded) _controller.value = 1.0;

      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTap() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse().then<void>((void value) {
          if (!mounted) return;
          setState(() {
            // Rebuild without widget.children.
          });
        });
      }
      PageStorage.of(context).writeState(context, _isExpanded);
    });
    if (widget.onExpansionChanged != null) {
      widget.onExpansionChanged!(_isExpanded);
    }
  }

  Widget _buildChildren(BuildContext context, Widget? child) {
    // final Color borderSideColor = _borderColor.value ?? Colors.transparent;
    // final Color titleColor = _headerColor.value!;

    return Container(
      // padding: widget.expansionPadding,
      margin: widget.expansionMargin,
      decoration: BoxDecoration(
          color: _backgroundColor.value ?? Colors.transparent,
          border: widget.border ?? Border.all(color: widget.borderColor!),
          borderRadius: widget.expansionRadius),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconTheme.merge(
            data: IconThemeData(color: _iconColor.value),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: widget.headerBackgroundColor ?? Colors.transparent,
                borderRadius: widget.expansionRadius != null
                    ? BorderRadius.only(
                        topLeft: (widget.expansionRadius as BorderRadius).topLeft,
                        topRight: (widget.expansionRadius as BorderRadius).topRight,
                        bottomLeft: !_isExpanded ? (widget.expansionRadius as BorderRadius).bottomLeft : Radius.zero,
                        bottomRight: !_isExpanded ? (widget.expansionRadius as BorderRadius).bottomLeft : Radius.zero,
                      )
                    : null,
              ),
              child: DecoratedBox(
                decoration: BoxDecoration(
                    border: Border(
                  bottom: _isExpanded
                      ? BorderSide(
                          color: widget.borderColor ?? Colors.transparent,
                        )
                      : BorderSide.none,
                )),
                child: ListTile(
                  onTap: _handleTap,
                  leading: widget.leading,
                  title: widget.title,
                  contentPadding: widget.headerPadding,
                  visualDensity: const VisualDensity(vertical: -3),
                  trailing: widget.trailing ??
                      RotationTransition(
                        turns: _iconTurns,
                        child: Icon(
                          Icons.expand_more,
                          color: widget.iconColor ?? Colors.grey,
                        ),
                      ),
                ),
              ),
            ),
          ),
          ClipRect(
            child: Align(
              heightFactor: _heightFactor.value,
              child: child,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void didChangeDependencies() {
    final ThemeData theme = Theme.of(context);
    // _borderColorTween.end = theme.dividerColor;
    _headerColorTween
      ..begin = theme.textTheme.titleLarge?.color
      ..end = theme.secondaryHeaderColor;
    _iconColorTween
      ..begin = theme.unselectedWidgetColor
      ..end = theme.secondaryHeaderColor;
    _backgroundColorTween.end = widget.backgroundColor;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final bool closed = !_isExpanded && _controller.isDismissed;
    return AnimatedBuilder(
      animation: _controller.view,
      child: closed
          ? null
          : Padding(
              padding: widget.bodyPadding ?? EdgeInsets.zero,
              child: SizedBox(
                width: context.sizeSide.width,
                child: Column(
                  crossAxisAlignment: widget.crossAxisAlignment!,
                  mainAxisAlignment: widget.mainAxisAlignment!,
                  children: widget.children!,
                ),
              ),
            ),
      builder: (context, child) => _buildChildren(context, child),
    );
  }
}
