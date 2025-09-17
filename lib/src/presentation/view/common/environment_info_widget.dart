// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import '../../../core/services/environment_service.dart';

/// Widget to display environment information (useful for debugging)
class EnvironmentInfoWidget extends StatelessWidget {
  const EnvironmentInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Environment Information',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
                fontWeight: Theme.of(context).textTheme.titleLarge?.fontWeight,
                color: Theme.of(context).textTheme.titleLarge?.color,
              ),
            ),
            const SizedBox(height: 16),
            _buildInfoRow(
              context,
              'Environment',
              EnvironmentService.environment,
            ),
            _buildInfoRow(context, 'App Name', EnvironmentService.appName),
            _buildInfoRow(context, 'Base URL', EnvironmentService.baseUrl),
            _buildInfoRow(
              context,
              'Full API URL',
              EnvironmentService.fullApiUrl,
            ),
            _buildInfoRow(context, 'App ID', EnvironmentService.appId),
            _buildInfoRow(
              context,
              'Is Production',
              EnvironmentService.isProduction.toString(),
            ),
            _buildInfoRow(
              context,
              'Enable Logging',
              EnvironmentService.enableLogging.toString(),
            ),
            _buildInfoRow(
              context,
              'Enable Analytics',
              EnvironmentService.enableAnalytics.toString(),
            ),
            _buildInfoRow(
              context,
              'Enable Crashlytics',
              EnvironmentService.enableCrashlytics.toString(),
            ),

            _buildInfoRow(
              context,
              'Connection Timeout',
              '${EnvironmentService.connectionTimeout}ms',
            ),
            _buildInfoRow(
              context,
              'Receive Timeout',
              '${EnvironmentService.receiveTimeout}ms',
            ),
            _buildInfoRow(
              context,
              'Send Timeout',
              '${EnvironmentService.sendTimeout}ms',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(BuildContext context, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 140,
            child: Text(
              '$label:',
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(fontFamily: 'monospace'),
            ),
          ),
        ],
      ),
    );
  }
}
