import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answerText, this.onTop, {super.key});

  final String answerText;
  final void Function() onTop;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTop,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      ),
      child: Text(answerText , textAlign: TextAlign.center,),
    );
  }
}
