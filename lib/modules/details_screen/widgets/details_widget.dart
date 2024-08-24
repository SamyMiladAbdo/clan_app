import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:flutter/material.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.onSurface.withOpacity(0.05),
        border: Border.all(
          color: AppColors.secondary.withOpacity(0.06),
        ),
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 9.0,
        horizontal: defaultPadding,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.secondary.withOpacity(0.11)),
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.asset(
              AssetsData.test3,
              height: 58.5,
              width: 78,
              fit: BoxFit.cover,
            ),
          ),
          const HorizintalSpace(16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "7.34 SAR",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 19.0,
                  color: AppColors.black.withOpacity(0.9),
                ),
              ),
              // const VerticalSpace(8.0),
              Text(
                "المحبة - بطيخ احمر",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13.0,
                  color: AppColors.gray.withOpacity(0.9),
                ),
              ),
            ],
          ),
          const Spacer(),
          const CircleAvatar(
            backgroundColor: AppColors.onSecondary,
            child: Text(
              "2",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
                color: AppColors.black,
              ),
            ),
          ),
        ],
      ),
    );

    // return Material(
    //   elevation: 2,
    //   shadowColor: AppColors.black,
    //   borderRadius: BorderRadius.circular(defaultRadius),
    //   borderOnForeground: true,
    //   child: ListTile(
    //     tileColor: AppColors.onSurface.withOpacity(0.05),
    //     contentPadding: EdgeInsets.symmetric(
    //       vertical: 9.0,
    //       horizontal: defaultPadding,
    //     ),
    //     leading: Container(
    //       decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(defaultRadius),
    //           border: Border.all(color: AppColors.secondary.withOpacity(0.11))),
    //       child: Image.asset(
    //         AssetsData.image,
    //         height: 58.5,
    //         width: 78,
    //         fit: BoxFit.cover,
    //       ),
    //     ),
    //     title: const Text(
    //       "7.34 SAR",
    //       style: TextStyle(
    //         fontWeight: FontWeight.w700,
    //         fontSize: 19.0,
    //         color: AppColors.black,
    //       ),
    //     ),
    //     subtitle: const Text(
    //       "المحبة - بطيخ احمر",
    //       style: TextStyle(
    //         fontWeight: FontWeight.w500,
    //         fontSize: 13.0,
    //         color: AppColors.gray,
    //       ),
    //     ),
    //     trailing: const CircleAvatar(
    //       backgroundColor: AppColors.onSecondary,
    //       child: Text(
    //         "2",
    //         style: TextStyle(
    //           fontWeight: FontWeight.w500,
    //           fontSize: 18.0,
    //           color: AppColors.black,
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
