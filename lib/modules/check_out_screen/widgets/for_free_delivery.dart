import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:flutter/material.dart';

class ForFreeDelivery extends StatelessWidget {
  const ForFreeDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      shadowColor: AppColors.black,
      borderRadius: BorderRadius.circular(defaultRadius),
      child: ListTile(
        tileColor: AppColors.offWhite,
        titleAlignment: ListTileTitleAlignment.top,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 27.0,
          horizontal: 18.0,
        ),
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AssetsData.logo3),
          ],
        ),
        title: const Text(
          "توصيل مجاني على كل طلب",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 19.0,
              color: AppColors.black),
        ),
        subtitle: const Text(
          "يساعدك في الحصول على عروض ترويجية وخصومات شخصية",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14.0,
            color: AppColors.black,
          ),
        ),
        trailing: SizedBox(
          height: 28.0,
          width: 58.0,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.onSecondary,
                padding: EdgeInsets.zero,
              ),
              onPressed: () {},
              child: const Text(
                "اشترك",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  // fontSize: 5.0,
                  color: AppColors.black,
                ),
              )),
        ),
      ),
    );
  }
}
