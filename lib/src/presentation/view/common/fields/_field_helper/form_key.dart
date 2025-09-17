// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';

// ignore: must_be_immutable
class FormKey extends StatelessWidget {
  final GlobalKey<FormBuilderState> formKey;
  final Widget child;
  final Map<String, dynamic> initialValue;
  final Function? submitAction;
  // final bool autoFocusOnValidationFailure;

  Map<Type, Action<Intent>>? actions;
  Map<ShortcutActivator, Intent>? shortcuts;

  FormKey({
    Key? key,
    required this.formKey,
    required this.child,
    this.initialValue = const {},
    this.actions,
    this.shortcuts,
    this.submitAction,
    // this.autoFocusOnValidationFailure = true,
  }) : super(key: key) {
    shortcuts ??= {};
    shortcuts!.addAll(
      <ShortcutActivator, Intent>{const SingleActivator(LogicalKeyboardKey.tab): const ActivateIntent()},
    );
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: formKey,
      // autoFocusOnValidationFailure: autoFocusOnValidationFailure,
      autovalidateMode: AutovalidateMode.disabled,
      enabled: true,
      initialValue: initialValue,
      skipDisabled: false,
      child: FocusableActionDetector(
        actions: actions,
        shortcuts: shortcuts,
        autofocus: true,
        child: child,
      ),
    );
  }
}

/* // ignore: must_be_immutable
class AppFormFieldKeyHandler extends StatelessWidget {

  FormBuilderState? formState;
  String? nextField;
  Function? submitAction;
  Widget child;
  FocusNode? focusNode;

  AppFormFieldKeyHandler({
    Key? key, 
    this.formState,
    this.nextField,
    this.submitAction,
    required this.child,
    this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Focus(
      onKey: (FocusNode node, RawKeyEvent event) {
        if (event is RawKeyDownEvent && (event.logicalKey.keyId == 0x100000009 || event.logicalKey.keyId == 0x100000009)) {
          if (nextField != null && nextField!.isNotEmpty) {
            formState?.fields[nextField!]?.requestFocus();
          } else {
            focusNode?.unfocus();
          }
          return KeyEventResult.handled;
        } else if (event is RawKeyDownEvent && (event.logicalKey.keyId == 0x20000020d || event.logicalKey.keyId == 0x10000000D)) {
          submitAction?.call();
          if (submitAction != null) {
            return KeyEventResult.handled;
          }
        }
        return KeyEventResult.ignored;
      },
      child: child,
    );
  }

} */
