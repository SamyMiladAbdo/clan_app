import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HistoryItemWidget extends StatelessWidget {
  const HistoryItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: AppColors.onSecondary.withOpacity(0.62),
          child: SvgPicture.asset(
            AssetsData.buy,
            color: AppColors.black,
          ),
        ),
        const HorizintalSpace(15.0),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "مصروفات",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18.0,
                color: Colors.black,
              ),
            ),
            VerticalSpace(8.0),
            Text(
              "07 may, 2024",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 17.0,
                color: AppColors.gray,
              ),
            ),
          ],
        ),
        const Spacer(),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "SAR 14",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18.0,
                color: AppColors.surface,
              ),
            ),
            VerticalSpace(8.0),
            Text(
              "الرصيد SAR 0",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15.0,
                color: AppColors.gray,
              ),
            ),
          ],
        )
      ],
    );
  }
}
