import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/modules/account_screen/widgets/complete_your_profile_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CompleteYourProfileWidget extends StatelessWidget {
  const CompleteYourProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showBottomSheet(
            context: context,
            backgroundColor: Colors.white,
            builder: (context) => const CompleteYourProfileBottomSheet());
      },
      child: Padding(
        padding: EdgeInsets.only(
          top: defaultPadding,
          bottom: 28.0,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.onSecondary.withOpacity(0.1),
            border: Border.all(
              color: AppColors.secondary.withOpacity(0.07),
            ),
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 23.0,
            horizontal: 19.0,
          ),
          child: Row(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        AssetsData.editSquare,
                        color: AppColors.tertiary,
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      const Text(
                        "أكمل ملفك الشخصي",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 7.0,
                  ),
                  const Text(
                    "يساعدك في الحصول على عروض\n ترويجية وخصومات شخصية",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0,
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              SvgPicture.asset(
                AssetsData.arrowLift3,
                color: AppColors.tertiary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
