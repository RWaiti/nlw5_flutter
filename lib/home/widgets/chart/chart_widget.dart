import 'package:flutter/material.dart';
import 'package:nlw5_flutter/core/app_colors.dart';
import 'package:nlw5_flutter/core/app_text_styles.dart';

class ChartWidget extends StatelessWidget {
  final int userScore;
  const ChartWidget({Key? key, required this.userScore}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: 80,
        child: Stack(
          children: [
            Center(
              child: Container(
                height: 80,
                width: 80,
                child: CircularProgressIndicator(
                  strokeWidth: 10,
                  value: userScore / 100,
                  backgroundColor: AppColors.chartSecondary,
                  valueColor:
                      AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
                ),
              ),
            ),
            Center(
              child: Text(
                "$userScore%",
                style: AppTextStyles.heading,
              ),
            )
          ],
        ));
  }
}
