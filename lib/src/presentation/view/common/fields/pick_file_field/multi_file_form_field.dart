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
import '../../../../view_model/helper/pick_image_helper.dart';
import '../../text_widget.dart';
import '../_field_helper/decoration_field.dart';
import '../_field_helper/form_field_border.dart';

class MultiFileFormField extends FormBuilderFieldDecoration<List<FileModel>> {
  final List<String>? initValue;
  final DecorationField? decorationField;
  final EdgeInsetsGeometry? margin;
  final FileSource? imageSource;
  final double? width;
  final double? height;
  final Widget Function(
      BuildContext context, PickMultiFileFieldController? controller)? build;

  MultiFileFormField({
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
    this.imageSource = FileSource.glary,
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
    final state = field as PickMultiFileFormFieldState;
    return state.buildFormField();
  }

  @override
  PickMultiFileFormFieldState createState() => PickMultiFileFormFieldState();
}

class PickMultiFileFormFieldState extends FormBuilderFieldDecorationState<
    MultiFileFormField, List<FileModel>> {
  PickMultiFileFieldController? controller;
  Widget Function(
      BuildContext context, PickMultiFileFieldController? controller)? builder;
  @override
  void initState() {
    super.initState();
    controller = PickMultiFileFieldController(
      state: this,
      initValue: initialValue,
      imageSource: widget.imageSource,
    );
    builder = widget.build;
    // setValue(controller.initValue);
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

class PickMultiFileFieldController extends ChangeNotifier {
  final FormBuilderFieldDecorationState<MultiFileFormField, List<FileModel>>
      state;

  List<FileModel>? initValue;
  late final PickImageHelper _pickImage;
  final FileSource? imageSource;

  PickMultiFileFieldController({
    required this.state,
    this.initValue,
    this.imageSource = FileSource.glary,
  }) {
    _pickImage = PickImageHelper(fileSource: imageSource!);
  }

  void pickImage() async {
    _pickImage.changeSource = imageSource!;
    List<FileModel>? files = await _pickImage.pick(isMulti: true);
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
