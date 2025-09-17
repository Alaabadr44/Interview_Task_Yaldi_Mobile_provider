// Flutter imports:
// Package imports:
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

// Project imports:
import '../../../../core/config/app_colors.dart';
import '../../../../core/utils/constant.dart';
import '../../../../core/utils/extension.dart';
import '../text_widget.dart';
import '../ticker_widget.dart';
import '_field_helper/decoration_field.dart';
import '_field_helper/form_field_border.dart';

class InternationalPhoneField extends FormBuilderFieldDecoration<dynamic> {
  final DecorationField? decorationField;
  final EdgeInsetsGeometry? margin;

  const InternationalPhoneField({
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
    this.decorationField,
    this.margin,
  }) : super(builder: _buildField);

  static Widget _buildField(FormFieldState<dynamic> field) {
    final state = field as _FormBuilderInternationalPhoneState;
    return state.buildField();
  }

  @override
  FormBuilderFieldDecorationState<InternationalPhoneField, dynamic>
      createState() => _FormBuilderInternationalPhoneState();
}

class _FormBuilderInternationalPhoneState
    extends FormBuilderFieldDecorationState<InternationalPhoneField, dynamic> {
  late final TextEditingController textEditingController;

  late List<String?> phone;

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController(text: widget.initialValue);
    phone = List.filled(2, null);
    // phone[1] = "-";
    phone.last = textEditingController.text;
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  double getWidth(bool isPrefixIcon, BuildContext context) {
    if (isPrefixIcon) {
      if (context.isMobile) {
        return context.sizeSide.smallSide * .35;
      } else {
        return context.sizeSide.smallSide * .2;
      }
    } else {
      if (context.isMobile) {
        return context.sizeSide.smallSide * .3;
      } else {
        return context.sizeSide.smallSide * .15;
      }
    }
  }

  Widget buildField() {
    DecorationField decorate = widget.decorationField ?? DecorationField();
    return Padding(
      padding: widget.margin ?? EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /*        if (decorate.labelText.isNotNull)
            TextWidget(
              text: decorate.labelText!,
              style: decorate.labelStyle ?? context.bodyL?.copyWith(fontWeight: FontWeight.w500),
            ),
          8.ph, */
          InputDecorator(
            decoration: FormFieldBorders.border(
              context: context,
              decoration: decoration,
              decorationField: decorate.copyWith(
                labelLock: FloatingLabelBehavior.never,
                prefixIcon: SizedBox(
                  height: 40,
                  width: getWidth(decorate.prefixIcon != null, context),
                  child: CountryCodePicker(
                    onChanged: (value) {
                      phone.first = "${value.dialCode?.trim().replaceAll("+", "")}-";
                      if (phone.last.isNotNull) {
                        didChange(phone.join());
                      }
                    },
                    initialSelection: 'OM',
                    onInit: (value) {
                      phone.first = "${value?.dialCode?.trim().replaceAll("+", "")}-";
                      if (phone.last.isNotNull) {
                        setValue(phone.join());
                      }
                    },
                    emptySearchBuilder: (context) => SizedBox(
                      height: kAppBarHeight,
                      child: Center(
                        child: TickerWidget(
                          child: TextWidget(
                            text: context.localText.country_not_available,
                            style: context.bodyL?.black,
                          ),
                        ),
                      ),
                    ),
                    showOnlyCountryWhenClosed: false,
                    showDropDownButton: true,
                    enabled: enabled,
                    padding: EdgeInsets.zero,
                    textStyle: context.bodyL?.black,
                    dialogTextStyle: context.bodyL?.black,
                    searchStyle: context.bodyL?.black,
                    dialogBackgroundColor: AppColors.baseColor.withOpacity(.7),
                    // favorite: const ["SA", "AE", "QA", "EG", "KW", "BH", "IQ", "JO", "OM", "YE"],
                    builder: (p0) {
                      return Row(
                        children: [
                          (context.sizeSide.smallSide * .03).pw,
                          if (decorate.prefixIcon != null) ...[
                            Flexible(
                              child: decorate.prefixIcon!,
                            ),
                            (context.sizeSide.smallSide * .02).pw,
                          ],
                          ClipRRect(
                            borderRadius:
                                BorderRadius.circular(kRadiusSmall * .4),
                            child: Image.asset(
                              p0?.flagUri ?? '',
                              package: 'country_code_picker',
                              width: 32,
                              height: 20,
                              fit: BoxFit.fill,
                            ),
                          ),
                          (context.sizeSide.smallSide * .01).pw,
                          TextWidget(text: p0?.dialCode ?? ''),
                          const Icon(
                            Icons.arrow_drop_down,
                            color: AppColors.baseColor,
                            size: 20,
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              enabled: enabled,
            ),
            child: TextField(
              controller: textEditingController,
              style: context.bodyL,
              onChanged: (value) {
                if (value.isNotNull) {
                  phone.last = value.trim();
                  didChange(phone.join());
                } else {
                  phone.last = null;
                  didChange(null);
                }
              },
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(15),
                FilteringTextInputFormatter.allow(RegExp(r'^[1-9][0-9]*$|^$')),
              ],
              keyboardType: TextInputType.phone,
              autofillHints: const [
                AutofillHints.telephoneNumber,
                AutofillHints.telephoneNumberNational,
                AutofillHints.telephoneNumberLocal,
              ],
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: decorate.hintText,
                hintStyle: decorate.hintStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
