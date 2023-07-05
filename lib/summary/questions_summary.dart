import 'package:flutter/material.dart';
import 'package:quiz/summary/summary_item.dart';

class QuizSummary extends StatelessWidget {
  const QuizSummary(this.summary, {super.key});
  final List<Map<String, Object>> summary;

  @override
  Widget build(context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summary.map(
            (data) {
              return SummaryItem(data);
            },
          ).toList(),
        ),
      ),
    );
  }
}
