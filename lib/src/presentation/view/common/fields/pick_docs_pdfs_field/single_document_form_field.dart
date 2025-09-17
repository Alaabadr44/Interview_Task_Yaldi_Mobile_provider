// ignore_for_file: public_member_api_docs, sort_constructors_first

// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';

// Project imports:
import '../../../../../core/utils/enums.dart';
import '../../../../../core/utils/extension.dart';
import '../../../../../core/utils/file_model.dart';
import '../../../../view_model/helper/pick_document_helper.dart';
import '../../text_widget.dart';
import '../_field_helper/decoration_field.dart';
import '../_field_helper/form_field_border.dart';

class SingleDocumentFormField extends FormBuilderFieldDecoration<FileModel> {
  final String? initValue;
  final DecorationField? decorationField;
  final EdgeInsetsGeometry? margin;
  final FileSource? documentSource;
  final double? width;
  final double? height;
  final List<String>? allowedExtensions;
  final Widget Function(BuildContext context, PickDocumentFieldController? controller)? build;

  SingleDocumentFormField({
    super.key,
    required super.name,
    super.builder = _fieldBuilder,
    super.validator,
    super.autovalidateMode = AutovalidateMode.disabled,
    super.onChanged,
    super.onReset,
    super.onSaved,
    super.enabled = true,
    super.focusNode,
    super.valueTransformer,
    this.initValue,
    this.decorationField,
    this.margin,
    this.build,
    this.width,
    this.height,
    this.documentSource = FileSource.files,
    this.allowedExtensions = const ['pdf', 'doc', 'docx'],
  }) : super(
          initialValue: _getInitValue(initValue),
        );

  static FileModel? _getInitValue(String? initValue) {
    if (initValue.isNotNull) {
      return FileModel(
        name: initValue!.split('/').last,
        file: File(initValue),
      );
    }
    return null;
  }

  static Widget _fieldBuilder(field) {
    final state = field as PickDocumentFormFieldState;
    return state.buildFormField();
  }

  @override
  PickDocumentFormFieldState createState() => PickDocumentFormFieldState();
}

class PickDocumentFormFieldState extends FormBuilderFieldDecorationState<SingleDocumentFormField, FileModel> {
  PickDocumentFieldController? controller;
  Widget Function(BuildContext context, PickDocumentFieldController? controller)? builder;
  @override
  void initState() {
    super.initState();
    controller = PickDocumentFieldController(
      state: this,
      initValue: initialValue,
      documentSource: widget.documentSource,
      allowedExtensions: widget.allowedExtensions,
    );
    builder = widget.build;
  }

  @override
  void reset() {
    controller?.initValue = null;
    super.reset();
  }

  @override
  void setValue(FileModel? value, {bool populateForm = true}) {
    controller?.setValue(value);
    super.setValue(value, populateForm: populateForm);
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  Widget buildFormField() {
    DecorationField decorationField = widget.decorationField ?? DecorationField();
    return Padding(
      padding: widget.margin ?? EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (decorationField.labelText != null) ...[
            TextWidget(
              text: decorationField.labelText!,
              style: decorationField.labelStyle,
            ),
            8.ph,
          ],
          SizedBox(
            width: widget.width,
            height: widget.height,
            child: InputDecorator(
              decoration: FormFieldBorders.border(
                context: context,
                decoration: decoration,
                enabled: enabled,
                decorationField: decorationField.copyWith(
                  labelLock: FloatingLabelBehavior.never,
                  contentPadding: const EdgeInsetsDirectional.all(4),
                ),
              ),
              child: builder?.call(context, controller),
            ),
          ),
        ],
      ),
    );
  }
}

class PickDocumentFieldController extends ChangeNotifier {
  final FormBuilderFieldDecorationState<SingleDocumentFormField, FileModel> state;

  FileModel? initValue;
  final FileSource? documentSource;
  final List<String>? allowedExtensions;
  late final PickDocumentHelper _pickDocument;
  
  PickDocumentFieldController({
    required this.state,
    this.initValue,
    this.documentSource = FileSource.files,
    this.allowedExtensions = const ['pdf', 'doc', 'docx'],
  }) {
    _pickDocument = PickDocumentHelper(
      fileSource: documentSource!,
      allowedExtensions: allowedExtensions ?? ['pdf', 'doc', 'docx'],
    );
  }

  void pickDocument() async {
    _pickDocument.changeSource = documentSource!;
    _pickDocument.pick(isMulti: false).then((value) {
      if (value.isNotNull) {
        initValue = value?.first;
        state.setValue(initValue);
        notifyListeners();
      }
    });
  }

  void setValue(FileModel? value) {
    initValue = value;
    notifyListeners();
  }
}
