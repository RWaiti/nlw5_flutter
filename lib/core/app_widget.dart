import 'package:nlw5_flutter/core/home/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "NLW5-DevQuiz",
      home: HomePage(),
    );
  }
}
