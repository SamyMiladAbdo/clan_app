import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RequestWidget extends StatelessWidget {
  const RequestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        top: defaultPadding,
        bottom: defaultPadding,
        start: defaultPadding,
        end: 17.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const SizedBox(
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
                      radius: 32.0,
                      backgroundColor: Color(0xFFF6F6F8),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(AssetsData.test),
                        radius: 28.0,
                      ),
                    ),
                    Positioned(
                      right: 50,
                      child: CircleAvatar(
                        radius: 32.0,
                        backgroundColor: Color(0xFFF6F6F8),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(AssetsData.test),
                          radius: 28.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.detailsScreen);
                  },
                  child: Row(
                    children: [
                      Text(
                        "تفاصيل",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16.0,
                          color: AppColors.black.withOpacity(0.9),
                        ),
                      ),
                      SvgPicture.asset(
                        AssetsData.arrowLift2,
                        color: AppColors.black,
                      ),
                    ],
                  ))
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          const Text(
            "7.34 SAR",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 19.0,
              color: AppColors.black,
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Text(
            "تم التوصيل",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 14.0,
              color: AppColors.tertiary.withOpacity(0.9),
            ),
          ),
          const SizedBox(
            height: 7.0,
          ),
          Row(
            children: [
              SvgPicture.asset(
                AssetsData.calendar,
                color: AppColors.gray,
                height: 16.0,
                width: 16.0,
              ),
              const SizedBox(
                width: 6.0,
              ),
              const Text(
                "12 يناير , 2024",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14.0,
                  color: AppColors.gray,
                ),
              ),
              const Flexible(
                child: SizedBox(
                  width: 19.0,
                ),
              ),
              SvgPicture.asset(
                AssetsData.timeCircle,
                color: AppColors.gray,
                height: 15.0,
                width: 15.0,
              ),
              const SizedBox(
                width: 6.0,
              ),
              const Text(
                "01:12 ص",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14.0,
                  color: AppColors.gray,
                ),
              ),
              const Flexible(
                child: SizedBox(
                  width: 19.0,
                ),
              ),
              SvgPicture.asset(
                AssetsData.calendar2,
                color: AppColors.gray,
                height: 13.0,
                width: 13.0,
              ),
              const SizedBox(
                width: 6.0,
              ),
              const Text(
                "2132142323",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.0,
                  color: AppColors.gray,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
