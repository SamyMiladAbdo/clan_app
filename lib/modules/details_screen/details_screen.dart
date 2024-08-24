import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/size_config.dart';
import 'package:clan_app/core/utils/widgets/custom_app_bar.dart';
import 'package:clan_app/core/utils/widgets/custom_divider.dart';
import 'package:clan_app/core/utils/widgets/custom_elevated_button.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:clan_app/modules/details_screen/widgets/details_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: "#2132142323",
        context: context,
        actionIcon: AssetsData.call,
      ),
      bottomSheet: Material(
        elevation: 2,
        shadowColor: AppColors.black.withOpacity(0.08),
        child: Container(
          color: Colors.white,
          height: SizeConfig.screenHeight! * 0.15,
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: defaultPadding,
            vertical: defaultPadding,
          ),
          child: const CustomElevatedButton(
              backgroundColor: AppColors.onSecondary,
              child: Text(
                "طلب مرة ثانية",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.0,
                  color: AppColors.black,
                ),
              )),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
            left: 22.0,
            right: 25.0,
            bottom: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "تفاصيل الطلب",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 19.0,
                  color: Colors.black,
                ),
              ),
              const VerticalSpace(25.0),
              // request number
              Row(
                children: [
                  const Text(
                    "#",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17.0,
                      color: AppColors.black2,
                    ),
                  ),
                  const HorizintalSpace(12.0),
                  const Text(
                    "رقم الطلب: ",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0,
                      color: AppColors.black,
                    ),
                  ),
                  const Text(
                    "333",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      color: AppColors.black,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: AppColors.onSurface.withOpacity(0.31),
                        padding: const EdgeInsets.all(0)),
                    onPressed: () {},
                    child: const Text(
                      "نسخ",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12.0,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                ],
              ),
              CustomDivider1(
                color: AppColors.tertiary.withOpacity(0.22),
              ),
              const VerticalSpace(14.0),

              //delivery to
              Row(
                children: [
                  SvgPicture.asset(AssetsData.locate),
                  const HorizintalSpace(11.0),
                  const Text(
                    "التوصيل إلى: ",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0,
                      color: AppColors.black,
                    ),
                  ),
                  const Text(
                    "منزل 1",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
              const VerticalSpace(14.0),
              const CustomDivider2(),
              const VerticalSpace(38.0),
              const Text(
                "المنتجات",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 19.0,
                  color: Colors.black,
                ),
              ),
              const VerticalSpace(25.0),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => const DetailsWidget(),
                separatorBuilder: (context, index) => const VerticalSpace(15.0),
                itemCount: 7,
              ),

              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 38.0,
                ),
                child: CustomDivider2(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsetsDirectional.only(start: 2.0),
                      child: Text(
                        "الملخص",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 19.0,
                          color: Colors.black,
                        ),
                      ),
                    ),

                    const VerticalSpace(
                      18.0,
                    ),
                    //to show the total price

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "سعر الأصناف",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                            color: AppColors.gray,
                          ),
                        ),
                        // Spacer(),
                        Text(
                          "99\$",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                            color: AppColors.black,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: VerticalSpace.padding(16.0), bottom: 5.0),
                      child: const CustomDivider1(),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "رسوم التوصيل",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                            color: AppColors.gray,
                          ),
                        ),
                        // Spacer(),
                        Text(
                          "0\$",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                            color: AppColors.black,
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.only(
                          top: VerticalSpace.padding(16.0), bottom: 5.0),
                      child: CustomDivider1(
                        color: AppColors.black.withOpacity(0.50),
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "المجموع النهائي",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20.0,
                            color: AppColors.black,
                          ),
                        ),
                        // Spacer(),
                        Text(
                          "104\$",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 24.0,
                            color: AppColors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //to show the items under the bottom sheet
              VerticalSpace(
                SizeConfig.screenHeight! * 0.35,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
