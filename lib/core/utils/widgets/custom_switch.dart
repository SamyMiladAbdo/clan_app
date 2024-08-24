import 'package:clan_app/core/constants/color.dart';
import 'package:flutter/material.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key, required this.value, this.onChanged});
  final bool value;
  final void Function(bool)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: value,
      onChanged: (value) {
        onChanged!(value);
      },
      activeColor: AppColors.tertiary,
      trackOutlineColor: WidgetStateProperty.all(Colors.transparent),
      inactiveTrackColor: AppColors.gray.withOpacity(0.44),
      inactiveThumbColor: Colors.white,
    );
  }
}
