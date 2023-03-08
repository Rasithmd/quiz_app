import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': "What's your favorite colour?",
      'answers': [
        {"text": 'Blue', "score": 5},
        {"text": 'Pink', "score": 4},
        {"text": 'Black', "score": 3},
        {"text": 'Green', "score": 2},
      ],
    },
    {
      'questionText': "What's your favorite animal?",
      'answers': [
        {"text": 'Dog', "score": 5},
        {"text": 'Cat', "score": 4},
        {"text": 'Boat', "score": 3},
      ],
    },
    {
      'questionText': 'who\'s your favorite actor?',
      'answers': [
        {"text": 'Vijay', "score": 5},
        {"text": 'Ajith', "score": 4},
        {"text": 'Suriya', "score": 3},
        {"text": 'Vikram', "score": 2},
      ],
    },
    {
      'questionText': 'what\'s your favorite food?',
      'answers': [
        {"text": 'Porotto', "score": 5},
        {"text": 'Briyani', "score": 4},
        {"text": 'Poori', "score": 3},
        {"text": 'Dhoosa', "score": 2},
      ],
    },
    {
      'questionText': 'which\'s your favorite mobile brand?',
      'answers': [
        {"text": 'Iphone', "score": 5},
        {"text": 'Google', "score": 4},
        {"text": 'Samsung', "score": 3},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _qiuzReset() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    // print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("My First App"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  answerQuestion: _answerQuestion)
              : Result(_totalScore, _qiuzReset)),
    );
  }
}
