import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 134.0,
      // width: 500,
      color: AppColors.offWhite,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        // minTileHeight: 30.0,
        //to make image and border around it
        leading: const CircleAvatar(
          radius: 34.0,
          backgroundColor: Color(0xFFF6F6F6),
          child: CircleAvatar(
            radius: 31.0,
            backgroundImage: AssetImage(AssetsData.test),
          ),
        ),
        title: const Text(
          "محمد أحمد",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20.0,
            color: AppColors.black,
          ),
        ),
        subtitle: const Text(
          "+9821232221221",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18.0,
            color: AppColors.gray,
          ),
        ),
        trailing: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.editAccountScreen);
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "تعديل",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.0,
                  color: AppColors.black,
                ),
              ),
              const SizedBox(
                width: 5.0,
              ),
              SvgPicture.asset(
                AssetsData.arrowLift3,
                color: AppColors.tertiary,
              )
            ],
          ),
        ),
      ),
    );
  }
}
