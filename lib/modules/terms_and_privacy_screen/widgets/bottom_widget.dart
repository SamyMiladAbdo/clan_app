import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:clan_app/modules/terms_and_privacy_screen/widgets/category_widget.dart';
import 'package:flutter/material.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({super.key, required this.list});
  final List<List<String>> list;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.offWhite,
      padding: EdgeInsets.only(
        top: 27,
        left: defaultPadding,
        right: defaultPadding,
        bottom: 43.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "التصنيفات",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 24.0,
              color: AppColors.black,
            ),
          ),
          const VerticalSpace(29.0),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => CategoryWidget(
                    text: list[0][index],
                  ),
                  separatorBuilder: (context, index) =>
                      const VerticalSpace(17.0),
                  itemCount: list[0].length,
                ),
              ),
              // const HorizintalSpace(100.0),
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => CategoryWidget(
                    text: list[1][index],
                  ),
                  separatorBuilder: (context, index) =>
                      const VerticalSpace(17.0),
                  itemCount: list[1].length,
                ),
              ),
            ],
          ),
          const VerticalSpace(65.0),
          const Text(
            "كلان",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 24.0,
              color: AppColors.black,
            ),
          ),
          const VerticalSpace(33.0),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => CategoryWidget(
              text: list[2][index],
            ),
            separatorBuilder: (context, index) => const VerticalSpace(17.0),
            itemCount: list[2].length,
          ),
        ],
      ),
    );
  }
}
