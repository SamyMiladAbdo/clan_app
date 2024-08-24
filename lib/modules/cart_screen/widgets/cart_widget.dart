import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "العروض الأسبوعية",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16.0,
            color: AppColors.gray,
          ),
        ),
        const VerticalSpace(25.0),
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Container(
            height: 69.0,
            width: 69.0,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultRadius),
              
            ),
            child: Image.asset(AssetsData.test,fit: BoxFit.cover,),
          ),
          title: const Text(
            "المراعي حليب طازج كامل الدسم 2 لتر",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16.0,
              color: AppColors.black,
            ),
          ),
          subtitle: const Text(
            "SAR 22",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16.0,
              color: AppColors.black,
            ),
          ),
          trailing: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: AppColors.grayLight,
            ),
            height: 37.0,
            width: 98.0,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    backgroundColor: AppColors.primary.withOpacity(0.92),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Spacer(),
                const Text(
                  "1",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 19.0,
                    color: AppColors.black,
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    backgroundColor: AppColors.surface.withOpacity(0.22),
                    child: SvgPicture.asset(
                      AssetsData.delete,
                      color: AppColors.surface,
                      height: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // contentPadding: const EdgeInsets.all(20.0),
        ),
      ],
    );
  }
}
