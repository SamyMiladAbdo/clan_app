import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/widgets/custom_elevated_button.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:flutter/material.dart';

class SubscripeWidget extends StatelessWidget {
  const SubscripeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.secondary.withOpacity(0.07),
        ),
        borderRadius: BorderRadius.circular(defaultRadius),
        color: AppColors.offWhite,
      ),
      padding: const EdgeInsets.only(
        top: 32.0,
        bottom: 24.0,
        left: 28.0,
        right: 29.0,
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "اشترك بكلان بريميوم الآن!!",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 19.0,
              color: AppColors.black,
            ),
          ),
          VerticalSpace(29.0),
          Text(
            "يساعدك في الحصول على عروض ترويجية وخصومات شخصية",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.0,
              color: AppColors.black,
            ),
          ),
          VerticalSpace(35.0),
          SizedBox(
            width: double.infinity,
            child: CustomElevatedButton(
              backgroundColor: AppColors.onSecondary,
              child: Text(
                "اشترك الآن",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.0,
                  color: AppColors.black,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
