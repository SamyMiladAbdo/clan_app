import 'package:clan_app/core/utils/size_config.dart';
import 'package:flutter/cupertino.dart';

class HorizintalSpace extends StatelessWidget {
  const HorizintalSpace(this.value, {super.key});
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize! * value!,
    );
  }
}

class VerticalSpace extends StatelessWidget {
  const VerticalSpace(this.value, {super.key});
  final double? value;
  static double padding(value) {
    double padding = 0.0;
    return padding = SizeConfig.defaultSize! * value!;
  }

  // static double padding = SizeConfig.defaultSize! * value!;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! * value!,
    );
  }
}
