import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/core/config/l10n/generated/l10n.dart'; // Flutter imports:
// Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

// Project imports:
import '../../../../../../core/config/app_colors.dart';
import '../../../../../../core/services/user_service.dart';
import '../../../../../../core/utils/extension.dart';
import '../../../../common/containers/general_container.dart';
import '../../../../common/fields/_field_helper/decoration_field.dart';
import '../../../../common/fields/_field_helper/form_key.dart';
import '../../../../common/fields/generic_text_field.dart';
import 'create_user_password_widget.dart';

class BodyRegister extends StatelessWidget {
  final GlobalKey<FormBuilderState> formKey;
  final ValueNotifier<bool>? obscurePassword;
  final ValueNotifier<bool>? obscureRePassword;
  final GlobalKey<FormBuilderFieldState<FormBuilderField<dynamic>, dynamic>>?
  passwordKey;
  Widget get gapH => 20.ph;

  BodyRegister({
    super.key,
    required this.formKey,
    this.obscurePassword,
    this.obscureRePassword,
    this.passwordKey,
  }) : assert(
         (UserService.currentUser == null &&
                 obscurePassword != null &&
                 obscureRePassword != null &&
                 passwordKey != null) ||
             UserService.currentUser != null,
       );

  @override
  Widget build(BuildContext context) {
    return FormKey(
      formKey: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          const SizedBox(height: 30),
          GeneralContainer.white(
            child: GenericTextField(
              name: 'firstName',
              autofillHints: const [AutofillHints.givenName],
              textType: TextInputType.text,
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(
                  errorText: context.localText.validator_field_required_title,
                ),
                FormBuilderValidators.minLength(2),
              ]),
              textInputAction: TextInputAction.next,
              decorationField: DecorationFields.generalDecorationField(
                context,
                labelText: S.current.first_name,
                hintText: context.localText.first_name_hint,
                prefixIcon: Container(
                  padding: const EdgeInsets.all(12),
                  child: const Icon(
                    Icons.person_outline,
                    color: AppColors.primaryColor,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
          gapH,
          GeneralContainer.white(
            child: GenericTextField(
              name: 'lastName',
              autofillHints: const [AutofillHints.familyName],
              textType: TextInputType.text,
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(
                  errorText: context.localText.validator_field_required_title,
                ),
                FormBuilderValidators.minLength(2),
              ]),
              textInputAction: TextInputAction.next,
              decorationField: DecorationFields.generalDecorationField(
                context,
                labelText: S.current.last_name,
                hintText: context.localText.last_name_hint,
                prefixIcon: Container(
                  padding: const EdgeInsets.all(12),
                  child: const Icon(
                    Icons.person_outline,
                    color: AppColors.primaryColor,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
          gapH,
          GeneralContainer.white(
            child: GenericTextField(
              name: 'email',
              autofillHints: const [AutofillHints.email],
              textType: TextInputType.emailAddress,
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.email(),
              ]),
              textInputAction: TextInputAction.next,
              decorationField: DecorationFields.generalDecorationField(
                context,
                labelText: S.current.email_,
                hintText: context.localText.email_hint,
                prefixIcon: Container(
                  padding: const EdgeInsets.all(12),
                  child: const Icon(
                    Icons.email_outlined,
                    color: AppColors.primaryColor,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
          gapH,
          GeneralContainer.white(
            child: GenericTextField(
              name: 'username',
              autofillHints: const [AutofillHints.username],
              textType: TextInputType.text,
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(
                  errorText: context.localText.validator_field_required_title,
                ),
                FormBuilderValidators.minLength(2),
              ]),
              textInputAction: TextInputAction.next,
              decorationField: DecorationFields.generalDecorationField(
                context,
                labelText: S.current.username,
                hintText: context.localText.username_hint,
                prefixIcon: Container(
                  padding: const EdgeInsets.all(12),
                  child: const Icon(
                    Icons.person_outline,
                    color: AppColors.primaryColor,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
          gapH,
          CreateUserPasswordWidget(
            obscurePassword: obscurePassword!,
            obscureRePassword: obscureRePassword!,
            passwordKey: passwordKey!,
            rePasswordTitle: context.localText.confirm_password_hint,
            passwordTitle: context.localText.password_hint,
          ),
          ((context.bottomPadding * 0.3).ph),
        ],
      ),
    );
  }
}
