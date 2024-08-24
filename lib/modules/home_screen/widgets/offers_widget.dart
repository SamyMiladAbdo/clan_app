import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/routes/app_routes.dart';
import 'package:flutter/material.dart';

class OffersWidget extends StatelessWidget {
  const OffersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.showAllOffersScreen);
      },
      child: Container(
        height: 187,
        width: 143,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(defaultRadius)),
        child: Image.asset(
          AssetsData.test,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
