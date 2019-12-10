import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

// void main(List<String> args) {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int quest = 0;
  int totalScore = 0;
  void _answerQuestion(score) {
    setState(() {
      quest++;
      totalScore += score;
    });
    print(quest);
    print(totalScore);
  }

  void _resetQuiz() {
   setState(() {
      quest = 0;
    totalScore = 0;
   });
  }

  var questions = [
    {
      'question': 'What\'s your favourite colour',
      'answer': [
        {'text': 'Blue', 'score': 10},
        {'text': 'Black', 'score': 5},
        {'text': 'White', 'score': 2},
        {'text': 'Green', 'score': 1}
      ]
    },
    {
      'question': 'What\'s your favourite pet',
      'answer': [
        {'text': 'DOg', 'score': 15},
        {'text': 'Cat', 'score': 10},
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Fish', 'score': 1}
      ]
    },
    {
      'question': 'What\'s your favourite company',
      'answer': [
        {'text': 'Interswitch', 'score': 5},
        {'text': 'Microsoft', 'score': 5},
        {'text': 'Google', 'score': 5},
        {'text': 'Goldmansachs', 'score': 5}
      ]
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First App"),
        ),
        body: quest < questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                quest: quest,
                questions: questions,
              )
            : Result(totalScore, _resetQuiz),
      ),
    );
  }
}
