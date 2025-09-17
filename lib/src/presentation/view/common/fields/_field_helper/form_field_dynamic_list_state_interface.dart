// Flutter imports:
import 'package:flutter/material.dart' show ChangeNotifier, Widget;
// Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';

// Project imports:
import '../../../../../core/utils/extension.dart';

abstract class FormFiledDynamicListStateInterface<FieldType extends FormBuilderFieldDecoration<List<RETURNTYPE>>, DATATYPE,
    RETURNTYPE> extends FormBuilderFieldDecorationState<FieldType, List<RETURNTYPE>> {
  late final FormFieldDynamicListStateController<DATATYPE> controller;
  final RETURNTYPE Function(DATATYPE value) converter;
  final List<DATATYPE>? startValue;
  final String modelKeyName;

  FormFiledDynamicListStateInterface({
    this.modelKeyName = 'id',
    required this.converter,
    required this.startValue,
  });

  @override
  void reset() {
    controller.clear();
    super.reset();
  }

  @override
  void didChange(List<RETURNTYPE>? value) {
    super.didChange(value);

    if (value.isNotNull && !controller.data.isNotNull) {
      controller.clear();
    }
  }

  @override
  void initState() {
    super.initState();

    if (startValue == null) {
      controller = FormFieldDynamicListStateController<DATATYPE>(initialValue: null);
    } else {
      controller = FormFieldDynamicListStateController<DATATYPE>(initialValue: startValue);
    }

    if (controller.data.isNotEmpty) {
      setValue(controller.data.fold([], (previousValue, element) => previousValue?..add(converter.call(element))));
    }

    controller.addListener(handleControllerChanged);
  }

  @override
  void dispose() {
    // Dispose the _controller when initState created it
    controller.removeListener(handleControllerChanged);
    controller.dispose();
    super.dispose();
  }

  void handleControllerChanged() {
    didChange(controller.data.fold([], (previousValue, element) => previousValue?..add(converter.call(element))));
  }

  Widget buildFormField();
}

class FormFieldDynamicListStateController<DATATYPE> extends ChangeNotifier {
  late List<DATATYPE> data;

  FormFieldDynamicListStateController({required List<DATATYPE>? initialValue}) {
    set(initialValue ?? []);
  }

  void set(List<DATATYPE> value) => data = List.from(value);

  void add(DATATYPE model) {
    if (!data.contains(model)) {
      data.add(model);
      notifyListeners();
    }
  }

  void delete(DATATYPE model) {
    data.remove(model);
    notifyListeners();
  }

  void edit(int index, DATATYPE? newValue) {
    data.removeAt(index);
    data.insert(index, newValue as DATATYPE);
    notifyListeners();
  }

  void clear() {
    data.clear();
    notifyListeners();
  }
}
