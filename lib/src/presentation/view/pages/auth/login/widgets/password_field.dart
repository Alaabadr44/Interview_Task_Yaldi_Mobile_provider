// Flutter imports:
import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/material.dart';

// Package imports:
import 'package:form_builder_validators/form_builder_validators.dart';

// Project imports:
import '../../../../../../core/config/app_colors.dart';
import '../../../../../../core/config/assets/assets.gen.dart';
import '../../../../../../core/utils/constant.dart';
import '../../../../../../core/utils/enums.dart';
import '../../../../../../core/utils/extension.dart';
import '../../../../common/fields/_field_helper/decoration_field.dart';
import '../../../../common/fields/generic_text_field.dart';
import '../../../../common/image_widget.dart';
import '../../../../common/text_widget.dart';

class PasswordField extends StatelessWidget {
  final ValueNotifier<bool> passwordNotifier;

  const PasswordField({super.key, required this.passwordNotifier});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ValueListenableBuilder(
          valueListenable: passwordNotifier,
          builder: (context, isSecure, _) {
            return GenericTextField(
              name: 'password',
              initialValue: kDebugMode ? kPassword : null,
              autofillHints: const [AutofillHints.password],
              textType: TextInputType.text,
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(errorText: context.localText.validator_field_required_title),
                FormBuilderValidators.minLength(8, errorText: context.localText.passwordMustBe),
              ]),
              obscureText: isSecure,
              textInputAction: TextInputAction.done,
              decorationField: DecorationField(
                labelText: context.localText.password,
                hintText: context.localText.hintLoginPassword,
                hintStyle: context.bodyM,
                fillBackgroundColor: true,
                isBorder: false,
                contentPadding: const EdgeInsets.symmetric(vertical: 12),
                radiusBorder: kRadiusSmall,
                prefixIcon: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 12, maxHeight: 12, minHeight: 10, minWidth: 10),
                  child: IconButton(
                    onPressed: null,
                    icon: ImageWidget(image: Assets.icons.lock),
                  ),
                ),
                suffixIcon: IconButton(
                  icon: isSecure
                      ? ImageWidget(
                          image: Assets.icons.eyeLock,
                          height: 24,
                        )
                      : const Icon(Icons.visibility_outlined, color: AppColors.baseColor),
                  onPressed: () => passwordNotifier.value = !passwordNotifier.value,
                ),
              ),
            );
          },
        ),
        
        (context.sizeSide.smallSide * .15).ph,
      ],
    );
  }
}
