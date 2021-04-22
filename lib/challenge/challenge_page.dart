import 'package:flutter/material.dart';
import 'package:nlw5_flutter/challenge/widget/question_indicator/question_indicator_widget.dart';
import 'package:nlw5_flutter/challenge/widget/quiz/quiz_widget.dart';
import 'package:nlw5_flutter/core/app_colors.dart';

class ChallengePage extends StatefulWidget {
  ChallengePage({Key? key}) : super(key: key);

  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.border,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(child: QuestionIndicatorWidget()),
      ),
      body: QuizWidget(
        title: "O que é o Flutter em sua totalidade?",
      ),
    );
  }
}
