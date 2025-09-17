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

class SingleFileFormField extends FormBuilderFieldDecoration<FileModel> {
  final String? initValue;
  final DecorationField? decorationField;
  final EdgeInsetsGeometry? margin;
  final FileSource? imageSource;
  final double? width;
  final double? height;
  final Widget Function(
      BuildContext context, PickFileFieldController? controller)? build;

  SingleFileFormField({
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
    final state = field as PickFileFormFieldState;
    return state.buildFormField();
  }

  @override
  PickFileFormFieldState createState() => PickFileFormFieldState();
}

class PickFileFormFieldState
    extends FormBuilderFieldDecorationState<SingleFileFormField, FileModel> {
  PickFileFieldController? controller;
  Widget Function(BuildContext context, PickFileFieldController? controller)?
      builder;
  @override
  void initState() {
    super.initState();
    controller = PickFileFieldController(
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
    DecorationField decorationField =
        widget.decorationField ?? DecorationField();
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
/* 
class PickFileFieldController extends ChangeNotifier {
  final FormBuilderFieldDecorationState<SingleFileFormField, FileModel> state;

  FileModel? initValue;
  final FileSource? imageSource;
  late final PickImageHelper _pickImage;
  
  PickFileFieldController({
    required this.state,
    this.initValue,
    this.imageSource = FileSource.glary,
  }) {
    _pickImage = PickImageHelper(fileSource: imageSource!);
  }

  Future<void> pickImage() async {
    try {
      // Make sure we're using the correct source
      _pickImage.changeSource = imageSource!;
      
      // Use a single-value picker (isMulti: false)
      final result = await _pickImage.pick(isMulti: false);
      
      // Process the result
      if (result != null && result.isNotEmpty) {
        initValue = result.first;
        state.setValue(initValue);
        notifyListeners();
        
        // Debug log for verification
        print('Image picked successfully: ${initValue?.file.path}');
      } else {
        print('No image selected or permission denied');
      }
    } catch (e) {
      print('Error in PickFileFieldController.pickImage: $e');
    }
  }

  void setValue(FileModel? value) {
    initValue = value;
    notifyListeners();
  }
} */


class PickFileFieldController extends ChangeNotifier {
  final FormBuilderFieldDecorationState<SingleFileFormField, FileModel> state;

  FileModel? initValue;
  final FileSource? imageSource;
  late final PickImageHelper _pickImage;
  PickFileFieldController({
    required this.state,
    this.initValue,
    this.imageSource = FileSource.glary,
  }) {
    _pickImage = PickImageHelper(fileSource: imageSource!);
  }

  void pickImage() async {
    _pickImage.changeSource = imageSource!;
    _pickImage.pick(isMulti: false).then((value) {
      if (value.isNotNull) {
        initValue = value?.first;
        state.setValue(initValue);
        notifyListeners();
      }
    });
    /* if (files.isNotNull) {
      if (!initValue.isNotNull) {
        initValue = files;
        state.setValue(initValue);
        notifyListeners();
      } else {
        for (var element in files!) {
          if (!initValue!.contains(element)) {
            isMulti ? initValue!.add(element) : initValue = files;
            state.setValue(initValue);
            notifyListeners();
          }
        }
      }
    } */
  }

  void setValue(FileModel? value) {
    initValue = value;
    notifyListeners();
  }

  // void removeItem(int index) {
  //   isMulti ? initValue!.removeAt(index) : initValue = null;
  //   if (!initValue.isNotNull) {
  //     initValue = null;
  //   }
  //   state.setValue(initValue);
  //   notifyListeners();
  // }
}
