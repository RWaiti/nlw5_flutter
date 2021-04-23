import 'package:flutter/material.dart';
import 'package:nlw5_flutter/challenge/challenge_%20controller.dart';
import 'package:nlw5_flutter/challenge/widget/next_button/next_button_widget.dart';
import 'package:nlw5_flutter/challenge/widget/question_indicator/question_indicator_widget.dart';
import 'package:nlw5_flutter/challenge/widget/quiz/quiz_widget.dart';
import 'package:nlw5_flutter/core/app_colors.dart';
import 'package:nlw5_flutter/shared/models/question_model.dart';

class ChallengePage extends StatefulWidget {
  final List<QuestionModel> questions;
  ChallengePage({Key? key, required this.questions}) : super(key: key);

  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  final controller = ChallengeController();
  final pageController = PageController();

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      controller.currentPage = pageController.page!.toInt();
    });
  }

  void nextPage() {
    if (controller.currentPage < widget.questions.length - 1)
      pageController.nextPage(
        duration: Duration(milliseconds: 100),
        curve: Curves.linear,
      );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.border,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(86),
        child: SafeArea(
          top: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              ValueListenableBuilder(
                valueListenable: controller.currentPageNotifier,
                builder: (context, value, _) => QuestionIndicatorWidget(
                    currentPage: controller.currentPage + 1,
                    length: widget.questions.length),
              ),
            ],
          ),
        ),
      ),
      body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: pageController,
          children: widget.questions
              .map(
                (e) => QuizWidget(
                  question: e,
                  onChange: () {
                    nextPage();
                  },
                ),
              )
              .toList()),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ValueListenableBuilder(
            valueListenable: controller.currentPageNotifier,
            builder: (context, int value, _) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (value < widget.questions.length - 1)
                  Expanded(
                    child: NextButtonWidget.white(
                      label: "Pular",
                      onTap: nextPage,
                    ),
                  ),
                if (value == widget.questions.length - 1)
                  Expanded(
                    child: NextButtonWidget.green(
                        label: "Confirmar",
                        onTap: () {
                          Navigator.pop(context);
                        }),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
