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

class MultiDocumentFormField extends FormBuilderFieldDecoration<List<FileModel>> {
  final List<String>? initValue;
  final DecorationField? decorationField;
  final EdgeInsetsGeometry? margin;
  final FileSource? documentSource;
  final double? width;
  final double? height;
  final List<String>? allowedExtensions;
  final Widget Function(
      BuildContext context, PickMultiDocumentFieldController? controller)? build;

  MultiDocumentFormField({
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

  static List<FileModel>? _getInitValue(List<String>? initValue) {
    if (initValue.isNotNull) {
      return initValue!.fold<List<FileModel>>(
        [],
        (previousValue, element) => previousValue
          ..add(FileModel(
            name: element.split('/').last,
            file: File(element),
          )),
      );
    }
    return null;
  }

  static Widget _fieldBuilder(field) {
    final state = field as PickMultiDocumentFormFieldState;
    return state.buildFormField();
  }

  @override
  PickMultiDocumentFormFieldState createState() => PickMultiDocumentFormFieldState();
}

class PickMultiDocumentFormFieldState extends FormBuilderFieldDecorationState<
    MultiDocumentFormField, List<FileModel>> {
  PickMultiDocumentFieldController? controller;
  Widget Function(
      BuildContext context, PickMultiDocumentFieldController? controller)? builder;
  @override
  void initState() {
    super.initState();
    controller = PickMultiDocumentFieldController(
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
  void setValue(List<FileModel>? value, {bool populateForm = true}) {
    controller?.setValue(value);
    super.setValue(value, populateForm: populateForm);
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  Widget buildFormField() {
    DecorationField decorationField =
        widget.decorationField ?? DecorationField();
    return Padding(
      padding: widget.margin ?? EdgeInsets.zero,
      child: SizedBox(
        width: widget.width,
        height: widget.height,
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
            InputDecorator(
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
          ],
        ),
      ),
    );
  }
}

class PickMultiDocumentFieldController extends ChangeNotifier {
  final FormBuilderFieldDecorationState<MultiDocumentFormField, List<FileModel>>
      state;

  List<FileModel>? initValue;
  late final PickDocumentHelper _pickDocument;
  final FileSource? documentSource;
  final List<String>? allowedExtensions;

  PickMultiDocumentFieldController({
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
    List<FileModel>? files = await _pickDocument.pick(isMulti: true);
    if (files.isNotNull) {
      if (!initValue.isNotNull) {
        initValue = files;
        state.setValue(initValue);
        notifyListeners();
      } else {
        for (var element in files!) {
          if (!initValue!.contains(element)) {
            initValue!.add(element);
            state.setValue(initValue);
            notifyListeners();
          }
        }
      }
    }
  }

  void setValue(List<FileModel>? value) {
    initValue = value;
    notifyListeners();
  }

  void removeItem(int index) {
    initValue!.removeAt(index);
    if (!initValue.isNotNull) {
      initValue = null;
    }
    state.setValue(initValue);
    notifyListeners();
  }
}
