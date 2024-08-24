import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/core/utils/widgets/custom_app_bar.dart';
import 'package:clan_app/modules/loading_request_screen/cubit/cubit.dart';
import 'package:clan_app/modules/loading_request_screen/cubit/states.dart';
import 'package:clan_app/modules/loading_request_screen/widgets/bottom_sheet_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoadingRequestScreen extends StatelessWidget {
  const LoadingRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController descriptionController = TextEditingController();
    return BlocProvider(
      create: (BuildContext context) => LoadingRequestCubit(),
      child: BlocConsumer<LoadingRequestCubit, LoadingRequestStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = LoadingRequestCubit.get(context);
          return Scaffold(
            appBar: customAppBar(
              title: "#2132142323",
              context: context,
              actionIcon: AssetsData.call,
            ),
            body: Stack(
              children: [
                Container(
                  color: Colors.grey[400],
                  height: double.infinity,
                  width: double.infinity,
                ),
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: BottomSheetWidget(),
                )
                // Align(
                //   alignment: Alignment.bottomCenter,
                //   child: SingleChildScrollView(
                //     physics: const BouncingScrollPhysics(),
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.end,
                //       crossAxisAlignment: CrossAxisAlignment.center,
                //       children: [
                //         SizedBox(
                //           width: 145,
                //           child: ElevatedButton(
                //               style: ElevatedButton.styleFrom(
                //                 padding: const EdgeInsets.symmetric(
                //                   vertical: 8.0,
                //                   horizontal: 12.0,
                //                 ),
                //                 backgroundColor: Colors.white,
                //               ),
                //               onPressed: () {},
                //               child: Row(
                //                 children: [
                //                   SvgPicture.asset(
                //                     AssetsData.send,
                //                     color: AppColors.tertiary,
                //                   ),
                //                   const Text(
                //                     "موقعي الحالي",
                //                     style: TextStyle(
                //                       fontWeight: FontWeight.w500,
                //                       fontSize: 14.0,
                //                       color: AppColors.black,
                //                     ),
                //                   )
                //                 ],
                //               )),
                //         ),
                //         const VerticalSpace(13.0),
                //         Container(
                //           decoration: BoxDecoration(
                //               color: Colors.white,
                //               borderRadius: BorderRadius.only(
                //                 topLeft: Radius.circular(defaultRadius),
                //                 topRight: Radius.circular(defaultRadius),
                //               )),
                //           padding: EdgeInsets.only(
                //             top: 29.0,
                //             right: defaultPadding,
                //             left: defaultPadding,
                //             bottom: 47.0,
                //           ),
                //           child: Column(
                //             children: [
                //               //three buttons
                //               Row(
                //                 children: [
                //                   OutlinedButton(
                //                     onPressed: () {
                //                       //to change the selected button
                //                       cubit.changeSelectedButton(0);
                //                     },
                //                     style: OutlinedButton.styleFrom(
                //                       side: BorderSide(
                //                           //if it selcted or not selected
                //                           color: cubit.selectedButton == 0
                //                               ? AppColors.tertiary
                //                               : AppColors.gray),
                //                       padding: EdgeInsets.symmetric(
                //                         vertical: 4.0,
                //                         horizontal:
                //                             SizeConfig.screenWidth! * 0.08,
                //                       ),
                //                       backgroundColor:
                //                           //if it selcted or not selected

                //                           cubit.selectedButton == 0
                //                               ? AppColors.onSecondary
                //                                   .withOpacity(0.6)
                //                               : Colors.white,
                //                     ),
                //                     child: const Text(
                //                       "المنزل",
                //                       style: TextStyle(
                //                         fontWeight: FontWeight.w500,
                //                         fontSize: 14.0,
                //                         color: AppColors.black,
                //                       ),
                //                     ),
                //                   ),
                //                   const HorizintalSpace(10.0),
                //                   OutlinedButton(
                //                     onPressed: () {
                //                       cubit.changeSelectedButton(1);
                //                     },
                //                     style: OutlinedButton.styleFrom(
                //                       side: BorderSide(
                //                           color: cubit.selectedButton == 1
                //                               ? AppColors.tertiary
                //                               : AppColors.gray),
                //                       padding: EdgeInsets.symmetric(
                //                         vertical: 4.0,
                //                         horizontal:
                //                             SizeConfig.screenWidth! * 0.08,
                //                       ),
                //                       backgroundColor: cubit.selectedButton == 1
                //                           ? AppColors.onSecondary
                //                               .withOpacity(0.6)
                //                           : Colors.white,
                //                     ),
                //                     child: const Text(
                //                       "العمل",
                //                       style: TextStyle(
                //                         fontWeight: FontWeight.w500,
                //                         fontSize: 14.0,
                //                         color: AppColors.black,
                //                       ),
                //                     ),
                //                   ),
                //                   const HorizintalSpace(10.0),
                //                   OutlinedButton(
                //                     onPressed: () {
                //                       cubit.changeSelectedButton(2);
                //                     },
                //                     style: OutlinedButton.styleFrom(
                //                       side: BorderSide(
                //                           color: cubit.selectedButton == 2
                //                               ? AppColors.tertiary
                //                               : AppColors.gray),
                //                       //to set the button width and height
                //                       padding: EdgeInsets.symmetric(
                //                         vertical: 4.0,
                //                         horizontal:
                //                             SizeConfig.screenWidth! * 0.08,
                //                       ),
                //                       backgroundColor: cubit.selectedButton == 2
                //                           ? AppColors.onSecondary
                //                               .withOpacity(0.6)
                //                           : Colors.white,
                //                     ),
                //                     child: const Text(
                //                       "أخرى",
                //                       style: TextStyle(
                //                         fontWeight: FontWeight.w500,
                //                         fontSize: 14.0,
                //                         color: AppColors.black,
                //                       ),
                //                     ),
                //                   )
                //                 ],
                //               ),

                //               const VerticalSpace(23.0),
                //               //to make the border is dotted
                //               DottedBorder(
                //                 radius: const Radius.circular(12.0),
                //                 borderType: BorderType.RRect,
                //                 color:
                //                     const Color(0xFF16002B).withOpacity(0.25),
                //                 child: CustomElevatedButton(
                //                   backgroundColor: Colors.white,
                //                   style: ElevatedButton.styleFrom(
                //                     shape: RoundedRectangleBorder(
                //                       borderRadius: BorderRadius.circular(10.0),
                //                     ),
                //                   ),
                //                   child: Row(
                //                     children: [
                //                       Text(
                //                         " إرفاق صورة لمكان وضع الطلب بشكل دائم",
                //                         style: TextStyle(
                //                           fontFamily: "Almarai",
                //                           fontWeight: FontWeight.w400,
                //                           fontSize:
                //                               SizeConfig.defaultSize! * 20.0,
                //                           color: AppColors.black2,
                //                         ),
                //                       ),
                //                       const HorizintalSpace(10.0),
                //                       SvgPicture.asset(
                //                         AssetsData.attachment,
                //                         color: AppColors.tertiary,
                //                       ),
                //                     ],
                //                   ),
                //                 ),
                //               ),
                //               const VerticalSpace(11.0),
                //               CustomTextFormFiled(
                //                 controller: descriptionController,
                //                 label: "الوصف",
                //                 keyboardType: TextInputType.text,
                //                 validator: "الوصف مطلوب",
                //               ),
                //               const VerticalSpace(19.0),
                //               SizedBox(
                //                 width: double.infinity,
                //                 child: CustomElevatedButton(
                //                   backgroundColor: AppColors.onSecondary,
                //                   onPressed: () {
                //                     showDialog(
                //                       context: context,
                //                       builder: (context) =>
                //                           const DialogWidget(),
                //                     );
                //                   },
                //                   child: const Text(
                //                     "حفظ العنوان",
                //                     style: TextStyle(
                //                       fontWeight: FontWeight.w500,
                //                       fontSize: 20.0,
                //                       color: AppColors.black,
                //                     ),
                //                   ),
                //                 ),
                //               )
                //             ],
                //           ),
                //         )
                //       ],
                //     ),
                //   ),
                // )
              ],
            ),
          );
        },
      ),
    );
  }
}
