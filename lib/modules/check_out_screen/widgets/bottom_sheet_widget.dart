import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/size_config.dart';
import 'package:clan_app/core/utils/widgets/custom_elevated_button.dart';
import 'package:clan_app/routes/app_routes.dart';
import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: SizeConfig.screenHeight! * 0.15,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding,
      ),
      child: CustomElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.loadingRequestScreen);
        },
        backgroundColor: AppColors.green,
        child: const Text(
          "تابي",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20.0,
              color: AppColors.black),
        ),
      ),
    );
  }
}
