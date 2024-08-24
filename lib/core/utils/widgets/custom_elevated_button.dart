import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    this.height,
    this.onPressed,
    this.style,
    this.backgroundColor,
    required this.child,
  });
  final double? height;
  final void Function()? onPressed;
  final ButtonStyle? style;
  final Color? backgroundColor;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? SizeConfig.screenHeight! * 0.07,
      child: ElevatedButton(
          onPressed: onPressed ?? () {},
          style: style ??
              ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                backgroundColor: backgroundColor ?? Colors.white,
              ),
          child: child),
    );
  }
}
