import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:flutter/material.dart';

class CurrentBalanceWidget extends StatelessWidget {
  const CurrentBalanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.secondary.withOpacity(0.12),
        ),
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      padding: const EdgeInsets.only(
        top: 22.0,
        bottom: 22.0,
        right: 20.0,
        left: 20.0,
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "الرصيد الحالي",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16.0,
              color: AppColors.gray,
            ),
          ),
          VerticalSpace(19.0),
          Row(
            children: [
              Text(
                "144 SAR",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 32.0,
                  color: AppColors.tertiary,
                ),
              ),
              Spacer(),
              Text(
                "في تاريخ: 2\\2\\2022",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                  color: AppColors.gray,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
