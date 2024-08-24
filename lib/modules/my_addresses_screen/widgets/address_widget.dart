import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddressWidget extends StatelessWidget {
  const AddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SvgPicture.asset(
          AssetsData.locate,
          color: AppColors.tertiary,
          height: 22.0,
          width: 22.0,
        ),
        const HorizintalSpace(14.0),
        const Text(
          "منزل 4",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20.0,
            color: AppColors.black,
          ),
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(4.0),
          ),
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
          child: SvgPicture.asset(
            AssetsData.edit,
            color: Colors.white,
          ),
        ),
        const HorizintalSpace(27.0),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFFA63535),
            borderRadius: BorderRadius.circular(4.0),
          ),
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
          child: SvgPicture.asset(
            AssetsData.delete,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
