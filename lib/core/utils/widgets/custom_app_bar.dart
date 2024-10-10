import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

PreferredSizeWidget customAppBar({
  required String? title,
  Widget? titleWidget,
  double? leadingWidth,
  String? actionIcon,
  Color? actionIconColor,
  Widget? leading,
  bool isActionIcon = true,
  bool isleadingIcon = true,
  required context,
}) =>
    AppBar(
      leading: isleadingIcon
          ? leading ??
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: EdgeInsetsDirectional.only(start: defaultPadding),
                  child: SvgPicture.asset(
                    AssetsData.arrowRight,
                    color: AppColors.black,
                    height: 26,
                    width: 21,
                  ),
                ),
              )
          : null,
      leadingWidth: leadingWidth ?? 47,
      title: titleWidget ??
          Text(
            title!,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18.0,
              color: Colors.black,
            ),
          ),
      centerTitle: true,
      actions: isActionIcon
          ? [
              Padding(
                padding: EdgeInsetsDirectional.only(end: defaultPadding),
                child: SvgPicture.asset(
                  actionIcon ?? AssetsData.search2,
                  color: actionIconColor ?? AppColors.black,
                  height: 22,
                  width: 22.0,
                ),
              )
            ]
          : null,
    );
