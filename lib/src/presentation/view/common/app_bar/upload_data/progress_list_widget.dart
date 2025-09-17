// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:multi_listenable_builder/multi_listenable_builder.dart';

// Project imports:
import '../../../../../core/config/app_colors.dart';
import '../../../../../core/config/injector.dart';
import '../../../../view_model/blocs/assistance/bloc_progress_helper.dart';
import 'progress_item_widget.dart';

class ProgressListWidget extends StatelessWidget {
  const ProgressListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiListenableBuilder(
        notifiers: [injector<BlocProgressHelper>()],
        builder: (context, child) {
          return Card(
            color: AppColors.baseColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: injector<BlocProgressHelper>()
                      .allProgress
                      .map((progressModel) => ProgressItemWidget(
                            progressModel: progressModel,
                          ))
                      .toList(),
                ),
              ),
            ),
          );
        });
  }
}
