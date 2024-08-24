import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:clan_app/modules/change_address_screen/cubit/cubit.dart';
import 'package:clan_app/modules/change_address_screen/cubit/states.dart';
import 'package:clan_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ChangeAddressScreen extends StatelessWidget {
  const ChangeAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ChangeAddressCubit(),
      child: BlocConsumer<ChangeAddressCubit, ChangeAddressStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = ChangeAddressCubit.get(context);
          return Padding(
            padding: EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: 50.0),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "التوصيل إلى",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 22.0,
                        color: AppColors.black2),
                  ),
                  const SizedBox(height: 20.0),
                  RadioListTile(
                      activeColor: AppColors.tertiary,
                      value: cubit.items[2],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(defaultRadius),
                          side: BorderSide(
                              color: AppColors.secondary.withOpacity(0.58))),
                      title: Row(
                        children: [
                          SvgPicture.asset(
                            AssetsData.locate,
                            color: AppColors.tertiary,
                          height: 14.0,
                          width: 14.0,
                        ),
                        const SizedBox(width:8.0),
                          Text(
                            cubit.items[2],
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                              color: AppColors.black,
                            ),
                          ),
                          const Spacer(),
                          SvgPicture.asset(
                            AssetsData.arrowLift3,
                            color: AppColors.tertiary,
                          ),
                        ],
                      ),
                      groupValue: cubit.value,
                      onChanged: (value) {
                        cubit.changeRadioValue(value);
                      }),
                  const SizedBox(height: 11.0),
                  RadioListTile(
                    activeColor: AppColors.tertiary,
                    value: cubit.items[1],
                    groupValue: cubit.value,
                    onChanged: (value) {
                      cubit.changeRadioValue(value);
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                        side: BorderSide(
                            color: AppColors.secondary.withOpacity(0.58))),
                    title: Row(
                      children: [
                        SvgPicture.asset(
                          AssetsData.locate,
                          color: AppColors.tertiary,
                          height: 14.0,
                          width: 14.0,
                        ),
                        const SizedBox(width:8.0),
                        Text(
                          cubit.items[1],
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                            color: AppColors.black,
                          ),
                        ),
                        const Spacer(),
                        SvgPicture.asset(
                          AssetsData.arrowLift3,
                          color: AppColors.tertiary,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 11.0),
                  RadioListTile(
                    activeColor: AppColors.tertiary,
                    value: cubit.items[0],
                    groupValue: cubit.value,
                    
                    onChanged: (value) {
                      cubit.changeRadioValue(value);
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                        side: BorderSide(
                            color: AppColors.secondary.withOpacity(0.58))),
                    title: Row(
                      children: [
                        SvgPicture.asset(
                          AssetsData.locate,
                          color: AppColors.tertiary,
                          height: 14.0,
                          width: 14.0,
                        ),
                        const SizedBox(width:8.0),
                        Text(
                          cubit.items[0],
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                            color: AppColors.black,
                          ),
                        ),
                        const Spacer(),
                        SvgPicture.asset(
                          AssetsData.arrowLift3,
                          color: AppColors.tertiary,
                        ),
                      ],
                    ),
                  ),
                  const VerticalSpace(23.0),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, AppRoutes.addNewAddressScreen);
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            AssetsData.plus,
                            color: AppColors.tertiary,
                          ),
                          const SizedBox(
                            width: 11.0,
                          ),
                          const Text(
                            "إضافة عنوان جديد",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 17.0,
                              color: AppColors.black2,
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
