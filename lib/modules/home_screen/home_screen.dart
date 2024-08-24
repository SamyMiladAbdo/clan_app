import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/widgets/custom_search_text_form_field.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:clan_app/modules/change_address_screen/change_address_screen.dart';
import 'package:clan_app/modules/home_screen/cubit/cubit.dart';
import 'package:clan_app/modules/home_screen/cubit/states.dart';
import 'package:clan_app/modules/home_screen/widgets/buy_again_widget.dart';
import 'package:clan_app/modules/home_screen/widgets/category_widget.dart';
import 'package:clan_app/modules/home_screen/widgets/offers_widget.dart';
import 'package:clan_app/modules/home_screen/widgets/offers_widget2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = HomeCubit.get(context);
          return Scaffold(
            backgroundColor: const Color(0xFFFEFEFE),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: SafeArea(
                child: Column(
                  children: [
                    Container(
                      color: AppColors.offWhite,
                      padding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 25.0,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                AssetsData.logo,
                                height: 75,
                                width: 73,
                                fit: BoxFit.cover,
                              ),
                              const Text(
                                "التوصيل إلى",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.0,
                                ),
                              ),
                              SvgPicture.asset(AssetsData.locate),
                              // DropdownButton(
                              //   items: cubit.items,
                              //   onChanged: (value) {
                              //     cubit.changeDropdownValue(value);
                              //   },
                              //   underline: const SizedBox(),
                              //   value: cubit.value,
                              // ),
                              TextButton(
                                  onPressed: () {
                                    showBottomSheet(
                                        elevation: 10.0,
                                        context: context,
                                        backgroundColor: Colors.white,
                                        builder: (BuildContext context) =>
                                            const ChangeAddressScreen());
                                  },
                                  style: ButtonStyle(
                                    padding: WidgetStateProperty.resolveWith(
                                      (events) {
                                        return const EdgeInsets.all(4);
                                      },
                                    ),
                                  ),
                                  child: const Row(
                                    children: [
                                      Text(
                                        "منزل 1",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_drop_down,
                                        color: AppColors.black,
                                      )
                                    ],
                                  )),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 5.0),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(defaultRadius),
                                  color: AppColors.onSurface.withOpacity(0.31),
                                ),
                                child: const Text(
                                  "خلال 22\nدقيقة",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12.0,
                                      color: AppColors.black),
                                ),
                              ),
                            ],
                          ),
                          CustomSearchTextFormField(
                            searchController: searchController,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(defaultPadding),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 187.0,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (context, index) =>
                                  const OffersWidget(),
                              separatorBuilder: (context, index) =>
                                  const HorizintalSpace(20.0),
                              itemCount: 5,
                            ),
                          ),
                          const VerticalSpace(24.0),
                          SizedBox(
                            height: 87.0,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (context, index) =>
                                  const OffersWidget2(),
                              separatorBuilder: (context, index) =>
                                  const HorizintalSpace(20.0),
                              itemCount: 5,
                            ),
                          ),
                          const VerticalSpace(29.0),
                          const BuyAgainWidget(),
                          const VerticalSpace(41.0),
                          const CategoryWidget(
                            isFilled: false,
                          ),
                          const VerticalSpace(29.0),
                          ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) =>
                                const CategoryWidget(
                              isFilled: true,
                            ),
                            separatorBuilder: (context, index) =>
                                const VerticalSpace(29.0),
                            itemCount: 3,
                          ),
                        ],
                      ),
                    ),
                    // ListView.builder(itemBuilder: (context,index)=>CategoryWidget(index:index),itemCount: 5,)
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
