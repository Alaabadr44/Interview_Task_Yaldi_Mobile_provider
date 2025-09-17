import 'package:flutter/material.dart';
import '../../../../../../../core/utils/extension.dart';
import '../../../../../../../core/config/l10n/generated/l10n.dart';
import '../../../../../common/text_widget.dart';

class LogoutButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;

  const LogoutButtonWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: const Icon(Icons.logout, color: Colors.white),
        label: TextWidget(
          text: S.of(context).logout,
          style: context.bodyL?.copyWith(color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red.shade600,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 4,
        ),
      ),
    );
  }
}
