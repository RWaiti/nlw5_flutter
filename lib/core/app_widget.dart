import 'package:flutter/material.dart';
import 'package:nlw5_flutter/home/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "NLW5-DevQuiz",
      home: HomePage(),
    );
  }
}
