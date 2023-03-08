import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 15) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 21) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 18) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so good!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Center(child: Text(resultPhrase, style: TextStyle(fontSize: 20))),
          SizedBox(
            height: 30,
          ),
          TextButton(onPressed: resetHandler, child: Text("Quiz Reset"))
        ],
      ),
    );
  }
}
