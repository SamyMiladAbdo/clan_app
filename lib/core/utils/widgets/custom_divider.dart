import 'package:clan_app/core/constants/color.dart';
import 'package:flutter/material.dart';

class CustomDivider1 extends StatelessWidget {
  const CustomDivider1({super.key, this.color});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Divider(
      color:  color?? AppColors.gray.withOpacity(0.24),
      thickness: 1,
    );
  }
}

class CustomDivider2 extends StatelessWidget {
  const CustomDivider2({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: AppColors.tertiary.withOpacity(0.22),
      thickness: 4.0,
    );
  }
}
