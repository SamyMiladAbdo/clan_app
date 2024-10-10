import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/size_config.dart';
import 'package:clan_app/core/utils/widgets/custom_app_bar.dart';
import 'package:clan_app/core/utils/widgets/custom_divider.dart';
import 'package:clan_app/core/utils/widgets/custom_switch.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:clan_app/modules/check_out_screen/cubit/cubit.dart';
import 'package:clan_app/modules/check_out_screen/cubit/states.dart';
import 'package:clan_app/modules/check_out_screen/widgets/bottom_sheet_widget.dart';
import 'package:clan_app/modules/check_out_screen/widgets/cupons_widget.dart';
import 'package:clan_app/modules/check_out_screen/widgets/for_free_delivery.dart';
import 'package:clan_app/modules/check_out_screen/widgets/summery_widget.dart';
import 'package:clan_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CheckOutCubit(),
      child: BlocConsumer<CheckOutCubit, CheckOutStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = CheckOutCubit.get(context);
          return Scaffold(
            appBar: customAppBar(
              context: context,
              title: 'السلة',
            ),
            bottomSheet: const BottomSheetWidget(),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "العنوان ووقت التسليم",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 19.0,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(AssetsData.locate),
                        const HorizintalSpace(11.0),
                        const Text(
                          "التوصيل إلى:",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.0,
                            color: AppColors.black,
                          ),
                        ),
                        const Text(
                          "منزل 1",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0,
                            color: AppColors.black,
                          ),
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 26.0, bottom: 21.0),
                      child: CustomDivider2(),
                    ),
                    const Text(
                      "طريقة الدفع",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 19.0,
                        color: Colors.black,
                      ),
                    ),
                    const VerticalSpace(47.0),
                    Row(
                      children: [
                        Image.asset(AssetsData.tabby),
                        const HorizintalSpace(31.0),
                        const Text(
                          "tabby",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 19.0,
                            color: Colors.black,
                          ),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, AppRoutes.choosePaymentScreen);
                          },
                          child: Row(
                            children: [
                              const Text(
                                "تغيير",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16.0,
                                  color: AppColors.tertiary,
                                ),
                              ),
                              const HorizintalSpace(31.0),
                              SvgPicture.asset(AssetsData.arrowLift3),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const VerticalSpace(21.0),
                    const CustomDivider1(),
                    const VerticalSpace(25.0),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.black.withOpacity(0.22),
                              ),
                              borderRadius:
                                  BorderRadius.circular(defaultRadius)),
                          padding: const EdgeInsets.symmetric(
                              vertical: 4.0, horizontal: 12.0),
                          child: SvgPicture.asset(
                            AssetsData.wallet,
                            color: AppColors.black,
                          ),
                        ),
                        const HorizintalSpace(22.0),
                        const Text(
                          "المحفظة",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 19.0,
                            color: Colors.black,
                          ),
                        ),
                        const HorizintalSpace(45.0),
                        const Text(
                          "SAR 0.00",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 19.0,
                            color: AppColors.tertiary,
                          ),
                        ),
                        const Spacer(),
                        CustomSwitch(
                          value: cubit.switchValue,
                          onChanged: (value) {
                            cubit.changeSwitchValue(value);
                          },
                        )
                      ],
                    ),
                    const VerticalSpace(60.0),
                    const CustomDivider2(),
                    const VerticalSpace(21.0),
                    const ForFreeDelivery(),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 22.0),
                      child: CustomDivider2(),
                    ),
                    //cupons container
                    const CuponsWidget(),

                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 22.0),
                      child: CustomDivider2(),
                    ),
                    Text(
                      "في حال عدم توفر المنتج هل ترغب أن:",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0,
                        color: AppColors.black.withOpacity(0.54),
                      ),
                    ),
                    const VerticalSpace(12.0),
                    Material(
                      elevation: 2,
                      shadowColor: AppColors.black,
                      borderRadius: BorderRadius.circular(defaultRadius),
                      child: RadioListTile(
                          activeColor: AppColors.tertiary,
                          value: cubit.options[0],
                          groupValue: cubit.radioValue,
                          title: const Text(
                            "استبداله بمنتج مشابه",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                                color: AppColors.black),
                          ),
                          onChanged: (value) {
                            cubit.changeRadioValue(value);
                          }),
                    ),
                    const VerticalSpace(9.0),
                    Material(
                      elevation: 2,
                      shadowColor: AppColors.black,
                      borderRadius: BorderRadius.circular(defaultRadius),
                      child: RadioListTile(
                          activeColor: AppColors.tertiary,
                          value: cubit.options[1],
                          groupValue: cubit.radioValue,
                          title: const Text(
                            "الغاء المنتج العير متوفر",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                                color: AppColors.black),
                          ),
                          onChanged: (value) {
                            cubit.changeRadioValue(value);
                          }),
                    ),

                    //summary widget
                    const SummeryWidget(),
                    //to show the items under the bottom sheet
                    VerticalSpace(
                      SizeConfig.screenHeight! * 0.35,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
