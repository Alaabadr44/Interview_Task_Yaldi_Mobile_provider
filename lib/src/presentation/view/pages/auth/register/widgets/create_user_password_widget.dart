// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

// Project imports:
import '../../../../../../core/config/app_colors.dart';
import '../../../../../../core/utils/extension.dart';
import '../../../../common/containers/general_container.dart';
import '../../../../common/fields/_field_helper/decoration_field.dart';
import '../../../../common/fields/generic_text_field.dart';

class CreateUserPasswordWidget extends StatelessWidget {
  final ValueNotifier<bool> obscurePassword;
  final ValueNotifier<bool> obscureRePassword;
  final GlobalKey<FormBuilderFieldState<FormBuilderField<dynamic>, dynamic>>
  passwordKey;

  final String? passwordTitle;
  final String? rePasswordTitle;

  const CreateUserPasswordWidget({
    super.key,
    required this.obscurePassword,
    required this.obscureRePassword,
    required this.passwordKey,
    this.passwordTitle,
    this.rePasswordTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GeneralContainer.white(
          child: ValueListenableBuilder(
            valueListenable: obscurePassword,
            builder: (context, isSecure, child) {
              return GenericTextField(
                fieldKey: passwordKey,
                name: 'password',
                textType: TextInputType.visiblePassword,
                autofillHints: const [
                  AutofillHints.password,
                  AutofillHints.newPassword,
                ],
                validator: FormBuilderValidators.compose<String>([
                  FormBuilderValidators.required(
                    errorText: context.localText.validator_field_required_title,
                  ),
                  FormBuilderValidators.minLength(6),
                ]),
                obscureText: isSecure,
                decorationField: DecorationFields.generalDecorationField(
                  context,
                  labelText: passwordTitle ?? context.localText.password,
                  hintText:
                      passwordTitle ?? context.localText.hintLoginPassword,
                  prefixIcon: Container(
                    padding: const EdgeInsets.all(12),
                    child: const Icon(
                      Icons.lock_outline,
                      color: AppColors.primaryColor,
                      size: 20,
                    ),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isSecure
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: AppColors.grey600,
                    ),
                    onPressed:
                        () => obscurePassword.value = !obscurePassword.value,
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 20),
        GeneralContainer.white(
          child: ValueListenableBuilder(
            valueListenable: obscureRePassword,
            builder: (context, isSecure, child) {
              return GenericTextField(
                name: 'password_confirmation',
                textType: TextInputType.visiblePassword,
                autofillHints: const [
                  AutofillHints.password,
                  AutofillHints.newPassword,
                ],
                obscureText: isSecure,
                validator: FormBuilderValidators.compose<String>([
                  FormBuilderValidators.required(
                    errorText: context.localText.validator_field_required_title,
                  ),
                  FormBuilderValidatorsHelper.checkPasswordConfirmation(
                    context,
                    passwordKey,
                    errorText: context.localText.confirmPasswordDontMatch,
                  ),
                ]),
                decorationField: DecorationFields.generalDecorationField(
                  context,
                  labelText:
                      rePasswordTitle ?? context.localText.confirmPassword,
                  hintText:
                      rePasswordTitle ?? context.localText.confirmPassword,
                  prefixIcon: Container(
                    padding: const EdgeInsets.all(12),
                    child: const Icon(
                      Icons.lock_outline,
                      color: AppColors.primaryColor,
                      size: 20,
                    ),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isSecure
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: AppColors.grey600,
                    ),
                    onPressed:
                        () =>
                            obscureRePassword.value = !obscureRePassword.value,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
