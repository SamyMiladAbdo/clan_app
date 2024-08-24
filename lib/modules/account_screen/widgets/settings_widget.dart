import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({
    super.key,
    required this.assetName,
    required this.title,
  });

  final String assetName;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      shadowColor: AppColors.black,
      borderRadius: BorderRadius.circular(defaultRadius),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.secondary.withOpacity(0.12),
            ),
            borderRadius: BorderRadius.circular(defaultRadius)),
        child: ListTile(
          tileColor: Colors.white,
          leading: SvgPicture.asset(assetName, color: AppColors.tertiary),
          title: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.0,
              color: AppColors.black,
            ),
          ),
          trailing: SvgPicture.asset(AssetsData.arrowLift3,
              color: AppColors.tertiary),
        ),
      ),
    );
  }
}
