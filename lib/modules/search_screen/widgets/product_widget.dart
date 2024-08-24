import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, this.isfavourite = false});
  final bool isfavourite;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Material(
              elevation: 2,
              shadowColor: AppColors.black,
              borderRadius: BorderRadius.circular(defaultRadius),
              child: Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.black.withOpacity(0.05),
                          blurRadius: 2,
                          spreadRadius: 0,
                          offset: const Offset(0, 2))
                    ]),
                child: Image.asset(
                  AssetsData.test,
                  height: 117.0,
                  width: 115.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 5.0,
              right: -16.0,
              child: MaterialButton(
                onPressed: () {},
                shape: const CircleBorder(),
                height: 34.0,
                color: Colors.white,
                child: const Icon(
                  Icons.add,
                  color: AppColors.secondary,
                ),
              ),
            ),
            ConditionalBuilder(
              condition: isfavourite,
              builder: (context) =>
                  //to make border to the favourite icon
                  const Positioned(
                top: 8.0,
                left: 10.0,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // Border (Outlined Heart)
                    Icon(
                      Icons.favorite_border,
                      color: AppColors.tertiary, // Border color
                      size: 23.0,
                    ),
                    // Fill (Filled Heart)
                    Icon(
                      Icons.favorite,
                      color: AppColors.onSecondary, // Fill color
                      size: 20.0, // Slightly smaller to simulate border
                    ),
                  ],
                ),
              ),
              fallback: null,
            )
          ],
        ),
        const SizedBox(
          height: 9.0,
        ),
        const Text(
          "7.34 SAR",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16.0,
            color: AppColors.gray,
          ),
        ),
        const SizedBox(
          height: 6.0,
        ),
        const Text(
          "المراعي جبنة كرفت 100 غ",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 15.0,
            color: AppColors.black,
          ),
        ),
      ],
    );
  }
}
