import 'package:flutter/cupertino.dart';
import 'package:nlw5_flutter/core/app_images.dart';
import 'package:nlw5_flutter/home/home_state.dart';
import 'package:nlw5_flutter/shared/models/answer_model.dart';
import 'package:nlw5_flutter/shared/models/question_model.dart';
import 'package:nlw5_flutter/shared/models/quiz_model.dart';
import 'package:nlw5_flutter/shared/models/user_model.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizs;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed((Duration(seconds: 2)));

    user = UserModel(
        name: "Rafael",
        photoUrl: "https://avatars.githubusercontent.com/u/26288151?v=4");
    state = HomeState.success;
  }

  void getQuizs() async {
    state = HomeState.loading;
    await Future.delayed((Duration(seconds: 2)));
    quizs = [
      QuizModel(
          title: "NLW5 FLutter",
          questions: [
            QuestionModel(title: "O que está achando do Flutter?", answers: [
              AnswerModel(title: "Não Estou Curtindo!"),
              AnswerModel(title: "Estou Curtindo!"),
              AnswerModel(title: "Estou Curtindo Muito!", isRight: true),
              AnswerModel(title: "Até que estou Curtindo!"),
            ]),
            QuestionModel(title: "O que está achando do Flutter?", answers: [
              AnswerModel(title: "Não Estou Curtindo!"),
              AnswerModel(title: "Estou Curtindo!"),
              AnswerModel(title: "Estou Curtindo Muito!", isRight: true),
              AnswerModel(title: "Até que estou Curtindo!"),
            ]),
            QuestionModel(title: "O que está achando do Flutter?", answers: [
              AnswerModel(title: "Não Estou Curtindo!"),
              AnswerModel(title: "Estou Curtindo!"),
              AnswerModel(title: "Estou Curtindo Muito!", isRight: true),
              AnswerModel(title: "Até que estou Curtindo!"),
            ]),
            QuestionModel(title: "O que está achando do Flutter?", answers: [
              AnswerModel(title: "Não Estou Curtindo!"),
              AnswerModel(title: "Estou Curtindo!"),
              AnswerModel(title: "Estou Curtindo Muito!", isRight: true),
              AnswerModel(title: "Até que estou Curtindo!"),
            ]),
            QuestionModel(title: "O que está achando do Flutter?", answers: [
              AnswerModel(title: "Não Estou Curtindo!"),
              AnswerModel(title: "Estou Curtindo!"),
              AnswerModel(title: "Estou Curtindo Muito!", isRight: true),
              AnswerModel(title: "Até que estou Curtindo!"),
            ]),
            QuestionModel(title: "O que está achando do Flutter?", answers: [
              AnswerModel(title: "Não Estou Curtindo!"),
              AnswerModel(title: "Estou Curtindo!"),
              AnswerModel(title: "Estou Curtindo Muito!", isRight: true),
              AnswerModel(title: "Até que estou Curtindo!"),
            ]),
            QuestionModel(title: "O que está achando do Flutter?", answers: [
              AnswerModel(title: "Não Estou Curtindo!"),
              AnswerModel(title: "Estou Curtindo!"),
              AnswerModel(title: "Estou Curtindo Muito!", isRight: true),
              AnswerModel(title: "Até que estou Curtindo!"),
            ]),
            QuestionModel(title: "O que está achando do Flutter?", answers: [
              AnswerModel(title: "Não Estou Curtindo!"),
              AnswerModel(title: "Estou Curtindo!"),
              AnswerModel(title: "Estou Curtindo Muito!", isRight: true),
              AnswerModel(title: "Até que estou Curtindo!"),
            ]),
            QuestionModel(title: "O que está achando do Flutter?", answers: [
              AnswerModel(title: "Não Estou Curtindo!"),
              AnswerModel(title: "Estou Curtindo!"),
              AnswerModel(title: "Estou Curtindo Muito!", isRight: true),
              AnswerModel(title: "Até que estou Curtindo!"),
            ]),
            QuestionModel(title: "O que está achando do Flutter?", answers: [
              AnswerModel(title: "Não Estou Curtindo!"),
              AnswerModel(title: "Estou Curtindo!"),
              AnswerModel(title: "Estou Curtindo Muito!", isRight: true),
              AnswerModel(title: "Até que estou Curtindo!"),
            ]),
          ],
          imagem: AppImages.blocks,
          questionAnswered: 3,
          level: Level.facil)
    ];
    state = HomeState.success;
  }
}
