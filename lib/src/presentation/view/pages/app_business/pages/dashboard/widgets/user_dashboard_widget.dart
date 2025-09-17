import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in_left.dart';
// Removed unused extension import

import '../../../../../../../core/config/l10n/generated/l10n.dart';
import '../../../../../../../domain/entities/user_dash_model.dart';
import 'info_card_widget.dart';
import 'info_row_widget.dart';
import 'logout_button_widget.dart';
import 'profile_header_widget.dart';

class UserDashboardWidget extends StatelessWidget {
  final UserDashModel user;
  final VoidCallback onLogout;

  const UserDashboardWidget({
    super.key,
    required this.user,
    required this.onLogout,
  });

  @override
  Widget build(BuildContext context) {
    return FadeInUpBig(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Card with Profile Info
            ProfileHeaderWidget(user: user),
            const SizedBox(height: 20),

            // Personal Information Card
            InfoCardWidget(
              title: S.of(context).personal_information,
              icon: Icons.person_outline,
              children: [
                InfoRowWidget(
                  label: S.of(context).full_name,
                  value: '${user.firstName ?? ''} ${user.lastName ?? ''}',
                ),
                InfoRowWidget(
                  label: S.of(context).username,
                  value: user.username ?? S.of(context).n_a,
                ),
                InfoRowWidget(
                  label: S.of(context).email_address,
                  value: user.email ?? S.of(context).n_a,
                ),
                InfoRowWidget(
                  label: S.of(context).primary_phone,
                  value: user.phone ?? S.of(context).n_a,
                ),
                InfoRowWidget(
                  label: S.of(context).age,
                  value: user.age?.toString() ?? S.of(context).n_a,
                ),
                InfoRowWidget(
                  label: S.of(context).gender,
                  value: user.gender ?? S.of(context).n_a,
                ),
                InfoRowWidget(
                  label: S.of(context).birth_date,
                  value: user.birthDate ?? S.of(context).n_a,
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Physical Information Card
            InfoCardWidget(
              title: S.of(context).physical_information,
              icon: Icons.accessibility_new,
              children: [
                InfoRowWidget(
                  label: S.of(context).height,
                  value:
                      user.height != null
                          ? '${user.height!.toStringAsFixed(1)} cm'
                          : S.of(context).n_a,
                ),
                InfoRowWidget(
                  label: S.of(context).weight,
                  value:
                      user.weight != null
                          ? '${user.weight!.toStringAsFixed(1)} kg'
                          : S.of(context).n_a,
                ),
                InfoRowWidget(
                  label: S.of(context).eye_color,
                  value: user.eyeColor ?? S.of(context).n_a,
                ),
                InfoRowWidget(
                  label: S.of(context).blood_group,
                  value: user.bloodGroup ?? S.of(context).n_a,
                ),
                InfoRowWidget(
                  label: S.of(context).hair_color,
                  value: user.hair?.color ?? S.of(context).n_a,
                ),
                InfoRowWidget(
                  label: S.of(context).hair_type,
                  value: user.hair?.type ?? S.of(context).n_a,
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Address Information Card
            if (user.address != null)
              InfoCardWidget(
                title: S.of(context).address_information,
                icon: Icons.location_on,
                children: [
                  InfoRowWidget(
                    label: S.of(context).address,
                    value: user.address!.address ?? S.of(context).n_a,
                  ),
                  InfoRowWidget(
                    label: S.of(context).city,
                    value: user.address!.city ?? S.of(context).n_a,
                  ),
                  InfoRowWidget(
                    label: S.of(context).state,
                    value: user.address!.state ?? S.of(context).n_a,
                  ),
                  InfoRowWidget(
                    label: S.of(context).country,
                    value: user.address!.country ?? S.of(context).n_a,
                  ),
                  InfoRowWidget(
                    label: S.of(context).postal_code,
                    value: user.address!.postalCode ?? S.of(context).n_a,
                  ),
                ],
              ),

            // Company Information Card
            if (user.company != null)
              InfoCardWidget(
                title: S.of(context).company_information,
                icon: Icons.business,
                children: [
                  InfoRowWidget(
                    label: S.of(context).company,
                    value: user.company!.name ?? S.of(context).n_a,
                  ),
                  InfoRowWidget(
                    label: S.of(context).department,
                    value: user.company!.department ?? S.of(context).n_a,
                  ),
                  InfoRowWidget(
                    label: S.of(context).title,
                    value: user.company!.title ?? S.of(context).n_a,
                  ),
                ],
              ),

            // University Information
            if (user.university != null && user.university!.isNotEmpty)
              InfoCardWidget(
                // TODO:: st
                title: S.of(context).education,
                icon: Icons.school,
                children: [
                  InfoRowWidget(
                    // TODO:: st
                    label: S.of(context).university,
                    value: user.university ?? S.of(context).n_a,
                  ),
                ],
              ),

            const SizedBox(height: 20),

            // Logout Button
            LogoutButtonWidget(onPressed: onLogout),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
