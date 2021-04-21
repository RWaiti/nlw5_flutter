import 'package:flutter/material.dart';
import 'package:nlw5_flutter/challenge/widget/answer/answer_widget.dart';
import 'package:nlw5_flutter/core/app_text_styles.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  const QuizWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Text(
              title,
              style: AppTextStyles.heading,
            ),
            SizedBox(
              height: 24,
            ),
            AnswerWidget(
                isRight: false,
                isSelected: true,
                title:
                    "Possiblita a criação de aplicativo compilados nativamente"),
            AnswerWidget(
                title:
                    "Possiblita a criação de aplicativo compilados nativamente"),
            AnswerWidget(
                title:
                    "Possiblita a criação de aplicativo compilados nativamente"),
            AnswerWidget(
                title:
                    "Possiblita a criação de aplicativo compilados nativamente"),
          ],
        ),
      ),
    );
  }
}