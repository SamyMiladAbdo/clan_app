import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/size_config.dart';
import 'package:clan_app/core/utils/widgets/custom_app_bar.dart';
import 'package:clan_app/core/utils/widgets/custom_divider.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:clan_app/modules/choose_payment_screen/cubit/cubit.dart';
import 'package:clan_app/modules/choose_payment_screen/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ChoosePaymentScreen extends StatelessWidget {
  const ChoosePaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ChoosePaymentCubit(),
      child: BlocConsumer<ChoosePaymentCubit, ChoosePaymentStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = ChoosePaymentCubit.get(context);
          return Scaffold(
            appBar: customAppBar(
              title: "طريقة الدفع",
              context: context,
              isActionIcon: false,
            ),
            body: Padding(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "طريقة الدفع",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18.0,
                        color: Colors.black),
                  ),
                  const VerticalSpace(46.0),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Image.asset(AssetsData.applePay),
                    title: const Text(
                      "Apple Pay",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.0,
                        color: AppColors.black,
                      ),
                    ),
                    trailing: Radio(
                        activeColor: AppColors.tertiary,
                        value: cubit.options[0],
                        groupValue: cubit.radioValue,
                        onChanged: (value) {
                          cubit.changeRadioValue(value);
                        }),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 7.0),
                    child: CustomDivider1(),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Image.asset(AssetsData.tabby),
                    title: const Text(
                      "تابي",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18.0,
                          color: AppColors.black),
                    ),
                    trailing: Radio(
                        activeColor: AppColors.tertiary,
                        value: cubit.options[1],
                        groupValue: cubit.radioValue,
                        onChanged: (value) {
                          cubit.changeRadioValue(value);
                        }),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 7.0),
                    child: CustomDivider1(),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    // leading: Container(
                    //   color: Color(0xFFC4C4C4),
                    // ),
                    title: const Text(
                      "الدفع وقت الاستلام",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18.0,
                          color: AppColors.black),
                    ),
                    trailing: Radio(
                        activeColor: AppColors.tertiary,
                        value: cubit.options[2],
                        groupValue: cubit.radioValue,
                        onChanged: (value) {
                          cubit.changeRadioValue(value);
                        }),
                  ),
                  const VerticalSpace(71.0),
                  const CustomDivider2(),
                  const VerticalSpace(45.0),
                  const Text(
                    "بطاقة ائتمانية",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18.0,
                        color: Colors.black),
                  ),
                  const VerticalSpace(35.0),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(20.0),
                      side: const BorderSide(
                        color: AppColors.tertiary,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                      ),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          AssetsData.plus,
                          color: AppColors.tertiary,
                        ),
                        const SizedBox(width: 11.0),
                        Text(
                          "أضف بطاقة ائتمانية / بطاقة بنكية",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: SizeConfig.defaultSize! * 23.0,
                            color: AppColors.tertiary,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
