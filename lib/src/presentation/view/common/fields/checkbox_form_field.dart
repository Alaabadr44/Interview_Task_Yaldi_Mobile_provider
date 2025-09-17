// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';

// Project imports:
import '../../../../core/utils/extension.dart';
import '_field_helper/decoration_field.dart';
import '_field_helper/form_field_border.dart';

/// Single Checkbox field
class CheckboxFormField extends FormBuilderFieldDecoration<bool> {
  /// The primary content of the CheckboxListTile.
  ///
  /// Typically a [Text] widget.
  final Widget title;

  /// Additional content displayed below the title.
  ///
  /// Typically a [Text] widget.
  final Widget? subtitle;

  /// A widget to display on the opposite side of the tile from the checkbox.
  ///
  /// Typically an [Icon] widget.
  final Widget? secondary;

  /// The color to use when this checkbox is checked.
  ///
  /// Defaults to accent color of the current [Theme].
  final Color? activeColor;

  /// The color to use for the check icon when this checkbox is checked.
  ///
  /// Defaults to Color(0xFFFFFFFF).
  final Color? checkColor;

  /// Where to place the control relative to its label.
  final ListTileControlAffinity controlAffinity;

  /// Defines insets surrounding the tile's contents.
  ///
  /// This value will surround the [Checkbox], [title], [subtitle], and [secondary]
  /// widgets in [CheckboxListTile].
  ///
  /// When the value is null, the `contentPadding` is `EdgeInsets.symmetric(horizontal: 16.0)`.
  final EdgeInsets contentPadding;

  /// Defines how compact the list tile's layout will be.
  ///
  /// {@macro flutter.material.themedata.visualDensity}
  final VisualDensity? visualDensity;

  /// {@macro flutter.widgets.Focus.autofocus}
  final bool autofocus;

  /// If true the checkbox's [value] can be true, false, or null.
  ///
  /// Checkbox displays a dash when its value is null.
  ///
  /// When a tri-state checkbox ([tristate] is true) is tapped, its [onChanged]
  /// callback will be applied to true if the current value is false, to null if
  /// value is true, and to false if value is null (i.e. it cycles through false
  /// => true => null => false when tapped).
  ///
  /// If tristate is false (the default), [value] must not be null.
  final bool tristate;

  /// Whether to render icons and text in the [activeColor].
  ///
  /// No effort is made to automatically coordinate the [selected] state and the
  /// [value] state. To have the list tile appear selected when the checkbox is
  /// checked, pass the same value to both.
  ///
  /// Normally, this property is left to its default value, false.
  final bool selected;

  /// {@macro flutter.material.checkbox.shape}
  ///
  /// If this property is null then [CheckboxThemeData.shape] of [ThemeData.checkboxTheme]
  /// is used. If that's null then the shape will be a [RoundedRectangleBorder]
  /// with a circular corner radius of 1.0.
  final OutlinedBorder? shape;

  /// {@macro flutter.material.checkbox.side}
  ///
  /// The given value is passed directly to [Checkbox.side].
  ///
  /// If this property is null, then [CheckboxThemeData.side] of
  /// [ThemeData.checkboxTheme] is used. If that is also null, then the side
  /// will be width 2.
  final BorderSide? side;

  final DecorationField? decorationField;
  final EdgeInsetsGeometry? margin;

  final ValueNotifier<bool>? changeValue;

  /// Creates a single Checkbox field
  const CheckboxFormField({
    super.key,
    required super.name,
    super.validator,
    super.initialValue,
    super.decoration,
    super.onChanged,
    super.valueTransformer,
    super.enabled,
    super.onSaved,
    super.autovalidateMode = AutovalidateMode.onUserInteraction,
    super.onReset,
    super.focusNode,
    super.restorationId,
    required this.title,
    this.activeColor,
    this.changeValue,
    this.autofocus = false,
    this.checkColor,
    this.contentPadding = EdgeInsets.zero,
    this.visualDensity,
    this.controlAffinity = ListTileControlAffinity.leading,
    this.secondary,
    this.selected = false,
    this.subtitle,
    this.tristate = false,
    this.shape,
    this.side,
    this.decorationField,
    this.margin,
  }) : super(builder: _buildField);

  static Widget _buildField(FormFieldState<bool?> field) {
    final state = field as _FormBuilderCheckboxState;
    return state.buildField();
  }

  @override
  FormBuilderFieldDecorationState<CheckboxFormField, bool> createState() => _FormBuilderCheckboxState();
}

class _FormBuilderCheckboxState extends FormBuilderFieldDecorationState<CheckboxFormField, bool> {
  @override
  void initState() {
    super.initState();

    if (widget.changeValue != null) {
      widget.changeValue!.addListener(() {
        didChange(widget.changeValue!.value);
      });
    }
  }

  @override
  void dispose() {
    if (widget.changeValue != null) {
      widget.changeValue!.removeListener(() {});
    }
    super.dispose();
  }

  Widget buildField() {
    DecorationField decorate = widget.decorationField ?? DecorationField();
    return Padding(
      padding: widget.margin ?? EdgeInsets.zero,
      child: InputDecorator(
        decoration: FormFieldBorders.border(
            context: context,
            decoration: decoration,
            decorationField: decorate.copyWith(
              labelLock: FloatingLabelBehavior.never,
              contentPadding: EdgeInsetsDirectional.symmetric(vertical: context.sizeSide.smallSide * 0.01),
              constraints: const BoxConstraints(),
            ),
            enabled: enabled),
        child: Row(
          children: [
            Checkbox(
              value: widget.tristate ? value : (value ?? false),
              onChanged: enabled
                  ? (value) {
                      didChange(value);
                    }
                  : null,
              checkColor: widget.checkColor,
              activeColor: widget.activeColor,
              shape: widget.shape,
              autofocus: widget.autofocus,
              tristate: widget.tristate,
              visualDensity: widget.visualDensity,
              side: widget.side,
            ),
            widget.title,
          ],
        ),
      ),
    );
  }
}
