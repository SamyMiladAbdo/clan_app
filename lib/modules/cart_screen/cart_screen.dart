import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/size_config.dart';
import 'package:clan_app/core/utils/widgets/custom_app_bar.dart';
import 'package:clan_app/core/utils/widgets/custom_divider.dart';
import 'package:clan_app/core/utils/widgets/custom_elevated_button.dart';
import 'package:clan_app/core/utils/widgets/product_widget/product_widget.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:clan_app/modules/cart_screen/cubit/cubit.dart';
import 'package:clan_app/modules/cart_screen/cubit/states.dart';
import 'package:clan_app/modules/cart_screen/widgets/cart_widget.dart';
import 'package:clan_app/routes/app_routes.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CartCubit()..getCartProducts(),
      child: BlocConsumer<CartCubit, CartStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = CartCubit.get(context);
          // print(
          //     "cubit.cartProducts ${cubit.cartProducts!.results![0].toJson()}");
          return ConditionalBuilder(
            condition: cubit.cartProducts != null,
            builder: (context) => Scaffold(
              appBar: customAppBar(
                title: "السلة",
                context: context,
                actionIcon: AssetsData.delete,
                actionIconColor: AppColors.surface,
                leading: const SizedBox(),
              ),
              //to make pay button at the bottom
              bottomSheet: Container(
                  color: Colors.white,
                  height: SizeConfig.screenHeight! * 0.15,
                  padding: EdgeInsets.symmetric(
                    horizontal: defaultPadding,
                    vertical: defaultPadding,
                  ),
                  child: CustomElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.checkoutScreen);
                    },
                    backgroundColor: AppColors.onSecondary,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 15.0,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 14.0,
                            backgroundColor: AppColors.secondary,
                            child: Text(
                              cubit.cartProducts!.results!.length.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const HorizintalSpace(19.0),
                        Text(
                          "SAR ${cubit.totalPrice.toInt()}",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 22.0,
                            color: AppColors.black,
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          "الدفع",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                        const HorizintalSpace(30.0),
                        SvgPicture.asset(
                          AssetsData.arrowLift3,
                          color: AppColors.black,
                        ),
                      ],
                    ),
                  )),
              body: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.only(
                    right: defaultPadding,
                    left: defaultPadding,
                    top: 31.0,
                    bottom: defaultPadding,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "المنتجات",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 19.0,
                              color: Colors.black,
                            ),
                          ),
                          const Spacer(),
                          const Text(
                            "إضافة منتج",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16.0,
                                color: AppColors.tertiary),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, AppRoutes.layoutScreen);
                            },
                            icon: SvgPicture.asset(
                              AssetsData.arrowLift3,
                              color: AppColors.black,
                            ),
                          ),
                        ],
                      ),

                      const VerticalSpace(39.0),
                      const Text(
                        "العروض الأسبوعية",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16.0,
                          color: AppColors.gray,
                        ),
                      ),
                      const VerticalSpace(25.0),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => CartWidget(
                            cartItem: cubit.cartProducts!.results![index]),
                        separatorBuilder: (context, index) => const Padding(
                            padding: EdgeInsets.only(
                              top: 24.0,
                              bottom: 29.0,
                            ),
                            child: CustomDivider1()),
                        itemCount: cubit.cartProducts!.results!.length,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 42.0, bottom: 22.0),
                        child: CustomDivider2(),
                      ),
                      const Text(
                        "المنتجات المقترحة",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 19.0,
                          color: Colors.black,
                        ),
                      ),
                      const VerticalSpace(20.0),
                      SizedBox(
                        height: 145.0,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) => ProductWidget(
                            productPrice:
                                cubit.cartProducts!.results![index].price!,
                            productId: cubit.cartProducts!.results![index].id!,
                            productUnit:
                                cubit.cartProducts!.results![index].id!,
                          ),
                          separatorBuilder: (context, index) =>
                              const HorizintalSpace(18.0),
                          itemCount: cubit.cartProducts!.results!.length,
                        ),
                      ),
                      //to show the items under the bottom sheet
                      VerticalSpace(
                        SizeConfig.screenHeight! * 0.3,
                      )
                    ],
                  ),
                ),
              ),
            ),
            fallback: (context) => Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}
