
import 'package:flutter/material.dart';
import 'package:kid_app/model/question.dart';

class Quiz {
  final String topic;
  final Image suggestImage;
  final int numberQuestion;
  final Color colorProgress;
  final double percentComplete;
  final int time;
  final List<Question>? question;

  Quiz({
    required this.topic,
    required this.suggestImage,
    required this.numberQuestion,
    required this.colorProgress,
    required this.percentComplete,
    this.time = 10,
    this.question,
  });
}