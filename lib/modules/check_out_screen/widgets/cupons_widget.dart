import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/size_config.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CuponsWidget extends StatelessWidget {
  const CuponsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "الكوبونات والعروض",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: SizeConfig.defaultSize! * 25.0,
                color: Colors.black,
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Text(
                    "جميع الكوبونات (0)",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: SizeConfig.defaultSize! * 21.0,
                      color: AppColors.tertiary,
                    ),
                  ),
                  const HorizintalSpace(30.0),
                  SvgPicture.asset(AssetsData.arrowLift3)
                ],
              ),
            ),
          ],
        ),
        const VerticalSpace(25.0),
        Material(
          elevation: 2,
          shadowColor: AppColors.black,
          borderRadius: BorderRadius.circular(defaultRadius),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            //to rotate the leading text
            leading: RotationTransition(
              turns: const AlwaysStoppedAnimation(270 / 360),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(defaultRadius),
                    bottomRight: Radius.circular(defaultRadius),
                  ),
                  color: AppColors.onSecondary,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 6.0,
                  vertical: 9.0,
                ),
                // width: ,
                child: Text(
                  "الكوبونات",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 12.0,
                      color: AppColors.black.withOpacity(0.79)),
                ),
              ),
            ),

            horizontalTitleGap: 1,
            title: Row(
              children: [
                Text(
                  "إضافة كوبون",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: SizeConfig.defaultSize! * 25.0,
                      color: AppColors.tertiary),
                ),
                const Spacer(),
                Text(
                  "صالح حتى 2\\2\\2022",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: SizeConfig.defaultSize! * 18.0,
                      color: AppColors.black.withOpacity(0.54)),
                ),
                const HorizintalSpace(45.0)
              ],
            ),
            subtitle: Text(
              "يمكنك اضافة الكوبون الخاص بك",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
                color: AppColors.black.withOpacity(0.54),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
