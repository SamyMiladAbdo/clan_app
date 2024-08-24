import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/utils/widgets/custom_divider.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:flutter/material.dart';

class SummeryWidget extends StatelessWidget {
  const SummeryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 20.0, bottom: 15.0),
          child: CustomDivider2(),
        ),
        const Padding(
          padding: EdgeInsetsDirectional.only(start: 5.0),
          child: Text(
            "الملخص",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 19.0,
                color: Colors.black),
          ),
        ),
        const VerticalSpace(
          18.0,
        ),
        //to show the total price

        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "سعر الأصناف",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
                color: AppColors.gray,
              ),
            ),
            // Spacer(),
            Text(
              "99\$",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
                color: AppColors.black,
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16.0, bottom: 5.0),
          child: CustomDivider1(),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "رسوم التوصيل",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
                color: AppColors.gray,
              ),
            ),
            // Spacer(),
            Text(
              "0\$",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
                color: AppColors.black,
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16.0, bottom: 5.0),
          child: CustomDivider1(),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "الخصم",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
                color: AppColors.gray,
              ),
            ),
            // Spacer(),
            Text(
              "0\$",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
                color: AppColors.black,
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16.0, bottom: 5.0),
          child: CustomDivider1(),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "النقاط المكتسبة",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
                color: AppColors.gray,
              ),
            ),
            // Spacer(),
            Text(
              "22\$",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
                color: AppColors.black,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 28.0, bottom: 5.0),
          child: CustomDivider1(
            color: AppColors.black.withOpacity(0.50),
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "المجموع النهائي",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
                color: AppColors.black,
              ),
            ),
            // Spacer(),
            Text(
              "104\$",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 24.0,
                color: AppColors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
