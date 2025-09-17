// Flutter imports:
import 'package:flutter/material.dart' show ChangeNotifier, Widget;
// Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';

// Project imports:
import '../../../../../core/utils/app_logger.dart';

abstract class FormFiledDynamicStateInterface<FieldType extends FormBuilderFieldDecoration<RETURNTYPE>, DATATYPE, RETURNTYPE>
    extends FormBuilderFieldDecorationState<FieldType, RETURNTYPE> {
  late final FormFieldDynamicStateController<DATATYPE> controller;
  final RETURNTYPE? Function(DATATYPE value) converter;
  final DATATYPE? startValue;
  final String modelKeyName;

  FormFiledDynamicStateInterface({
    this.modelKeyName = 'id',
    required this.converter,
    required this.startValue,
  });

  @override
  void initState() {
    super.initState();

    try {
      if (startValue == null) {
        controller = FormFieldDynamicStateController(initialValue: null);
      } else {
        controller = FormFieldDynamicStateController(initialValue: startValue);
      }
    } catch (e) {
      AppLogger.logError('[FormFiledDynamicStateInterface] INITIALVALUE TYPE IS ${initialValue.runtimeType.toString()} ');
      controller = FormFieldDynamicStateController(initialValue: null);
    }

    controller.addListener(handleControllerChanged);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (controller.data != null) {
      setValue(converter.call(controller.data as DATATYPE));
    }
  }

  @override
  void dispose() {
    // Dispose the _controller when initState created it
    controller.removeListener(handleControllerChanged);
    controller.dispose();
    super.dispose();
  }

  void handleControllerChanged() => didChange(controller.data == null ? null : converter.call(controller.data as DATATYPE));

  Widget buildFormField();
}

class FormFieldDynamicStateController<DATATYPE> extends ChangeNotifier {
  DATATYPE? data;
  List<DATATYPE>? allData;
  List<DATATYPE>? filterData;

  FormFieldDynamicStateController({required DATATYPE? initialValue}) {
    set(initialValue);
  }

  void set(DATATYPE? value) => data = value;

  void setAllData(List<DATATYPE>? value) => allData = value;

  void add(DATATYPE value) {
    set(value);

    notifyListeners();
  }

  void setFilterList(List<DATATYPE>? newData) {
    if (newData == null) {
      filterData = null;
    } else {
      filterData = List.from(newData);
    }
    notifyListeners();
  }

  void delete() {
    data = null;

    notifyListeners();
  }

  void edit(DATATYPE? value) {
    data = value;

    notifyListeners();
  }
}
