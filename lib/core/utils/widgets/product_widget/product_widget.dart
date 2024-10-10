import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/widgets/product_widget/cubit/cubit.dart';
import 'package:clan_app/core/utils/widgets/product_widget/cubit/states.dart';
import 'package:clan_app/models/products_model.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget(
      {super.key,
      this.isfavourite = false,
      required this.productPrice,
      required this.productId,
      required this.productUnit});
  final bool isfavourite;
  final String productPrice;
  final int productId;
  final int productUnit;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ProductWidgetCubit(),
      child: BlocConsumer<ProductWidgetCubit, ProductWidgetStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = ProductWidgetCubit.get(context);
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Material(
                    elevation: 2,
                    shadowColor: AppColors.black,
                    borderRadius: BorderRadius.circular(defaultRadius),
                    child: Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            defaultRadius,
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.black.withOpacity(0.05),
                                blurRadius: 2,
                                spreadRadius: 0,
                                offset: const Offset(0, 2))
                          ]),
                      child: Image.asset(
                        AssetsData.test,
                        height: 117.0,
                        width: 115.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 5.0,
                      right: -16.0,
                      child: ConditionalBuilder(
                          condition: state is! CreateNewCartLoadingState,
                          builder: (context) => MaterialButton(
                                onPressed: () {
                                  cubit.createNewCart(
                                      productPrice, 704, 16, context);
                                },
                                shape: const CircleBorder(),
                                height: 34.0,
                                color: Colors.white,
                                child: const Icon(
                                  Icons.add,
                                  color: AppColors.secondary,
                                ),
                              ),
                          fallback: (context) => Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    start: 25.0),
                                child: SizedBox(
                                  height: 25.0,
                                  width: 25.0,
                                  child: CircularProgressIndicator(),
                                ),
                              ))),
                  ConditionalBuilder(
                    condition: isfavourite,
                    builder: (context) =>
                        //to make border to the favourite icon
                        const Positioned(
                      top: 8.0,
                      left: 10.0,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          // Border (Outlined Heart)
                          Icon(
                            Icons.favorite_border,
                            color: AppColors.tertiary, // Border color
                            size: 23.0,
                          ),
                          // Fill (Filled Heart)
                          Icon(
                            Icons.favorite,
                            color: AppColors.onSecondary, // Fill color
                            size: 20.0, // Slightly smaller to simulate border
                          ),
                        ],
                      ),
                    ),
                    fallback: null,
                  )
                ],
              ),
              Text(
                productPrice,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 19.0,
                    color: AppColors.black),
              )
            ],
          );
        },
      ),
    );
  }
}
