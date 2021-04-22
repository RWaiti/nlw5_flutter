import 'package:flutter/cupertino.dart';
import 'package:nlw5_flutter/home/home_repository.dart';
import 'package:nlw5_flutter/home/home_state.dart';
import 'package:nlw5_flutter/shared/models/quiz_model.dart';
import 'package:nlw5_flutter/shared/models/user_model.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizs;

  final repository = HomeRepository();

  void getUser() async {
    state = HomeState.loading;
    user = await repository.getUser();
    state = HomeState.success;
  }

  void getQuizs() async {
    state = HomeState.loading;
    quizs = await repository.getQuizs();
    state = HomeState.success;
  }
}
