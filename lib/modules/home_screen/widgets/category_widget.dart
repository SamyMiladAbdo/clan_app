import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.isFilled,
  });
  final bool isFilled;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "التصنيفات",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
        const VerticalSpace(24.0),
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 3,    
            mainAxisSpacing: 25.0,
            crossAxisSpacing: 9.0,
            childAspectRatio:  1/2,
            children: List.generate(
              6, (index) {
              return Column(
                children: [
                  Container(
                    height: 187.0,
                    // width: SizeConfig.screenWidth! * 0.28,
                    padding: const EdgeInsets.only(top: 31.0),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(defaultRadius),
                      border: Border.all(
                        color: AppColors.secondary.withOpacity(0.12),
                      ),
                      color: isFilled ? const Color(0xFFFDFBFA) : Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "عصائر",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                              color: AppColors.black),
                        ),
                        const Spacer(),
                        Image.asset(
                          AssetsData.image,
                        )
                      ],
                    ),
                  )
                ],
              );
            }),
          ),
        ),
      ],
    );
  }
}
