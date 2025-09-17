import 'package:flutter/material.dart';

import '../../../../../../../core/config/app_colors.dart';
import '../../../../../../../domain/entities/user_dash_model.dart';
import '../../../../../common/text_widget.dart';

class ProfileHeaderWidget extends StatelessWidget {
  final UserDashModel user;

  const ProfileHeaderWidget({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.primaryColor,
            AppColors.primaryColor.withOpacity(0.8),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryColor.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          // Profile Image
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
            backgroundImage:
                user.image != null && user.image!.isNotEmpty
                    ? NetworkImage(user.image!)
                    : null,
            child:
                user.image == null || user.image!.isEmpty
                    ? Icon(
                      Icons.person,
                      size: 40,
                      color: AppColors.primaryColor,
                    )
                    : null,
          ),
          const SizedBox(height: 16),

          // Name
          TextWidget(
            text: '${user.firstName ?? ''} ${user.lastName ?? ''}',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),

          // Username
          TextWidget(
            text: '@${user.username ?? 'user'}',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontSize: 16,
              color: Colors.white.withOpacity(0.9),
            ),
          ),
          const SizedBox(height: 4),

          // Email
          TextWidget(
            text: user.email ?? '',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontSize: 14,
              color: Colors.white.withOpacity(0.8),
            ),
          ),
        ],
      ),
    );
  }
}
