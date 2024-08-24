import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearchTextFormField extends StatelessWidget {
  const CustomSearchTextFormField({super.key, required this.searchController});

  final TextEditingController searchController;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.start,
      controller: searchController,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        label: const Padding(
          padding: EdgeInsetsDirectional.only(start: 25.0),
          child: Text(
            "البحث عن منتجات..",
            style: TextStyle(
              fontFamily: "Almarai",
              fontWeight: FontWeight.w400,
              fontSize: 12.0,
              color: AppColors.black,
            ),
          ),
        ),
        prefixIconConstraints: const BoxConstraints(
          maxHeight: 20.5,
          maxWidth: 35.0,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(start: 20.0),
          child: SvgPicture.asset(
            AssetsData.search2,
            color: AppColors.tertiary.withOpacity(0.6),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(defaultRadius),
          borderSide: BorderSide(
            color: AppColors.secondary.withOpacity(0.22),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(defaultRadius),
          borderSide: BorderSide(
            color: AppColors.tertiary.withOpacity(0.22),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(defaultRadius),
          borderSide: BorderSide(
            color: AppColors.tertiary.withOpacity(0.22),
          ),
        ),
      ),
    );
  }
}
