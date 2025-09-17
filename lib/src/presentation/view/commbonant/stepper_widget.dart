import '../../../core/services/setting_service.dart';
import '../common/ticker_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticker_text/ticker_text.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/utils/constant.dart';

// stepper_widget
class StepperWidget extends StatefulWidget {
  final int currentStep;
  final List<String> steps;

  const StepperWidget({
    super.key,
    required this.currentStep,
    required this.steps,
  });

  @override
  _StepperWidgetState createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      physics: const NeverScrollableScrollPhysics(),
      children: List.generate(widget.steps.length, (index) {
        final isActive = index + 1 == widget.currentStep;
        final isCompleted = index + 1 < widget.currentStep;
        final isNextStep = index + 1 == widget.currentStep;
        final isLastStep = index + 1 == widget.steps.length;
        return Row(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 800),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color:
                    isActive
                        ? AppColors.secondaryColor
                        : isCompleted
                        ? Colors.white
                        : Colors.white,
                border: Border.all(
                  color:
                      isActive
                          ? AppColors.secondaryColor
                          : isCompleted
                          ? AppColors.secondaryColor
                          : Colors.grey,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(kRadiusSmall),
              ),
              child: Center(
                child:
                    isCompleted
                        ? const Icon(
                          Icons.check,
                          color: AppColors.secondaryColor,
                        )
                        : Text(
                          '${index + 1}',
                          style: TextStyle(
                            color: isActive ? Colors.white : Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
              ),
            ),
            Row(
              children: [
                const SizedBox(width: 8),
                if (isActive)
                  SizedBox(
                    width: 110,
                    child: TickerText(
                      startPauseDuration: Duration(seconds: 1),
                      child: Text(
                        widget.steps[index],
                        style: TextStyle(
                          color:
                              isActive
                                  ? AppColors.secondaryColor
                                  : Colors.black,
                          fontWeight:
                              isActive ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                const SizedBox(width: 8),
                if (isNextStep && !isLastStep) ...[
                  const Icon(Icons.arrow_forward, color: AppColors.grey500),
                ],
                const SizedBox(width: 8),
              ],
            ),
          ],
        );
      }),
    );
  }
}
