import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/models/question_model.dart';
import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({super.key, required this.questionModel});
  final QuestionModel questionModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          questionModel.title!,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 24.0,
            color: AppColors.black,
          ),
        ),
        const SizedBox(height: 7.0),
        Text(
          questionModel.body!,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16.0,
            color: AppColors.black,
          ),
        )
      ],
    );
  }
}
