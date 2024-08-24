import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/size_config.dart';
import 'package:clan_app/core/utils/widgets/custom_divider.dart';
import 'package:clan_app/core/utils/widgets/custom_elevated_button.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.5, // Set the initial height
      minChildSize: 0.2, // Minimum height when collapsed
      maxChildSize: 1.0, // Maximum height when expanded
      builder: (context, scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(22.0),
              topRight: Radius.circular(22.0),
            ),
          ),
          padding: EdgeInsets.symmetric(
              vertical: 51.0, horizontal: SizeConfig.screenWidth! * 0.05),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "يتم تجهيز طلبك",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 22.0,
                      color: AppColors.black2),
                ),
                const VerticalSpace(14.0),
                const Text(
                  "يقوم كلان بجمع طلبك وتحضيره للتوصيل",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                    color: AppColors.black2,
                  ),
                ),
                const SizedBox(height: 13.0),
                Image.asset(AssetsData.line),
                const SizedBox(height: 29.0),
                const SizedBox(
                  width: double.infinity,
                  child: CustomElevatedButton(
                      backgroundColor: AppColors.onSecondary,
                      child: Row(
                        children: [
                          Text(
                            "تم دفع الطلب بنجاح",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                              color: AppColors.black2,
                            ),
                          ),
                        ],
                      )),
                ),
                const VerticalSpace(24.0),
                const CustomDivider2(),
                const VerticalSpace(33.0),
                ListTile(
                  leading: Image.asset(
                    AssetsData.logo2,
                    // height: 52.0,
                    // width: 68.0,
                  ),
                  title: const Text(
                    "كلان بيستلم الطلب ويجيك",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18.0,
                      color: AppColors.black2,
                    ),
                  ),
                ),
                const VerticalSpace(29.0),
                const CustomDivider2(),
                const VerticalSpace(26.0),
                Row(
                  children: [
                    const Text(
                      "تفاصيل الطلب",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 22.0,
                        color: AppColors.black2,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      "المزيد",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0,
                        color: AppColors.tertiary,
                      ),
                    ),
                    const HorizintalSpace(10.0),
                    SvgPicture.asset(
                      AssetsData.arrowLift3,
                      color: AppColors.black,
                    ),
                  ],
                ),

                const VerticalSpace(15.0),
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
                          backgroundColor:
                              AppColors.onSurface.withOpacity(0.31),
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

                const VerticalSpace(18.0),
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
                const VerticalSpace(20.0),
                CustomDivider1(
                  color: AppColors.tertiary.withOpacity(0.22),
                ),
                const VerticalSpace(21.0),
                const Row(
                  children: [
                    SizedBox(
                      width: 150,
                      child: Stack(
                        children: [
                          // SizedBox(
                          //   height: 62.0,
                          //   child: ListView.builder(
                          //     itemCount: 3,
                          //     scrollDirection: Axis.horizontal,
                          //     itemBuilder: (context, index) {
                          //       //if the first image don't make space
                          //       if (index == 0) {
                          //         return const CircleAvatar(
                          //           radius: 32.0,
                          //           backgroundColor: Color(0xFFF6F6F8),
                          //           child: CircleAvatar(
                          //             backgroundImage: AssetImage(AssetsData.test),
                          //             radius: 28.0,
                          //           ),
                          //         );
                          //       } else {
                          //         return Positioned(
                          //           //50 is the space and 56 is the width of the image
                          //           // 56 multiplied by the number of items that is index+1
                          //           right: 50 + 56 * (index + 1),
                          //           child: const CircleAvatar(
                          //             radius: 32.0,
                          //             backgroundColor: Color(0xFFF6F6F8),
                          //             child: CircleAvatar(
                          //               backgroundImage: AssetImage(AssetsData.test),
                          //               radius: 28.0,
                          //             ),
                          //           ),
                          //         );
                          //       }
                          //     },
                          //   ),
                          // ),

                          // to make border around the image
                          CircleAvatar(
                            radius: 37.0,
                            backgroundColor: Color(0xFFF6F6F8),
                            child: CircleAvatar(
                              backgroundImage: AssetImage(AssetsData.test),
                              radius: 33.0,
                            ),
                          ),
                          Positioned(
                            right: 50,
                            child: CircleAvatar(
                              radius: 37.0,
                              backgroundColor: Color(0xFFF6F6F8),
                              child: CircleAvatar(
                                backgroundImage: AssetImage(AssetsData.test),
                                radius: 33.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    HorizintalSpace(15.0),
                    Text(
                      "المنتجات",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0,
                        color: AppColors.black,
                      ),
                    ),
                  ],
                ),
                const VerticalSpace(13.0),
                const CustomDivider2(),
                const VerticalSpace(24.0),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    border: Border.all(
                      color: AppColors.secondary.withOpacity(0.07),
                    ),
                  ),
                  padding: const EdgeInsetsDirectional.only(
                      top: 5.0, bottom: 5.0, start: 10.0, end: 10.0),
                  child: ListTile(
                    // tileColor: AppColors.black,
                    // splashColor: AppColors.secondary,
                    // hoverColor: AppColors.secondary,
                    // selectedColor: AppColors.secondary,
                    contentPadding: EdgeInsets.zero,
                    leading: const CircleAvatar(
                      radius: 21.0,
                      backgroundImage: AssetImage(AssetsData.test),
                    ),
                    title: Text(
                      "توصيل مجاني على كل طلب",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: SizeConfig.defaultSize! * 22.0,
                      ),
                    ),
                    subtitle: Text(
                      "كلان بريميوم توصيل مجاني لا محدود وفوقها كاش باك حتى 30%",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: SizeConfig.defaultSize! * 19.0,
                        color: AppColors.black,
                      ),
                    ),
                    trailing: SizedBox(
                      width: SizeConfig.screenWidth! * 0.25,
                      height: 40.0,
                      child: const CustomElevatedButton(
                        backgroundColor: AppColors.onSecondary,
                        child: Text(
                          "اشترك",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 12.0,
                            color: AppColors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const VerticalSpace(30.0),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    border: Border.all(
                      color: AppColors.secondary.withOpacity(0.07),
                    ),
                  ),
                  padding: const EdgeInsetsDirectional.only(
                      top: 5.0, bottom: 5.0, start: 10.0, end: 10.0),
                  child: ListTile(
                    tileColor: AppColors.offWhite,
                    contentPadding: EdgeInsets.zero,
                    leading: Image.asset(AssetsData.logo3),
                    title: Text(
                      "وزع الكود للي تحبهم يعطيهم قسيمة 25 ريال ويجيك قسيمة 25 يال بعد أول طلب لهم",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: SizeConfig.defaultSize! * 21.0,
                        color: AppColors.black,
                      ),
                    ),
                    trailing: SizedBox(
                      width: SizeConfig.screenWidth! * 0.25,
                      height: 40.0,
                      child: const CustomElevatedButton(
                        backgroundColor: AppColors.onSecondary,
                        child: Text(
                          "مشاركة",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 12.0,
                            color: AppColors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
