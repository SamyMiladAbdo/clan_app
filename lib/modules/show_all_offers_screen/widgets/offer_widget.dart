import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/widgets/custom_elevated_button.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:flutter/material.dart';

class OfferWidget extends StatelessWidget {
  const OfferWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      shadowColor: AppColors.black,
      borderRadius: BorderRadius.circular(defaultRadius),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 9.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              AssetsData.test,
              height: 95.0,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            const VerticalSpace(18.0),
            const Text(
              "ر.س 100.00",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16.0,
                color: AppColors.black,
              ),
            ),
            const VerticalSpace(12.0),
            const Text(
              "كلان بطاقة هدايا\n 100 ر.س",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14.0,
                color: AppColors.gray,
              ),
            ),
            const VerticalSpace(20.0),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "0 نقاط",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14.0,
                  color: AppColors.black,
                ),
              ),
            ),
            const VerticalSpace(6.0),
            const Center(
              child: CustomElevatedButton(
                  backgroundColor: AppColors.onSecondary,
                  child: Text(
                    "اضف للعربة",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      color: AppColors.black,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
