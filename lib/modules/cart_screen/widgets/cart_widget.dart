import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:clan_app/models/cart_model.dart';
import 'package:clan_app/modules/cart_screen/cubit/cubit.dart';
import 'package:clan_app/modules/cart_screen/cubit/states.dart';
import 'package:clan_app/modules/cart_screen/widgets/cubit/cubit.dart';
import 'package:clan_app/modules/cart_screen/widgets/cubit/states.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key, required this.cartItem});
  final Results cartItem;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          CartWidgetCubit()..initQuantity(cartItem.quantity!),
      child: BlocConsumer<CartWidgetCubit, CartWidgetStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = CartWidgetCubit.get(context);
          // cubit.quantity = cartItem.quantity!;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Container(
                  height: 69.0,
                  width: 69.0,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  child: Image.asset(
                    AssetsData.test,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  cartItem.product!.name!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16.0,
                    color: AppColors.black,
                  ),
                ),
                subtitle: Text(
                  cartItem.price! + " " + cartItem.priceCurrency!,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16.0,
                    color: AppColors.black,
                  ),
                ),
                trailing: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: AppColors.grayLight,
                  ),
                  height: 37.0,
                  width: 98.0,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          cubit.increaseQuantity();
                        },
                        child: CircleAvatar(
                          backgroundColor: AppColors.primary.withOpacity(0.92),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        cubit.quantity.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 19.0,
                          color: AppColors.black,
                        ),
                      ),
                      const Spacer(),
                      ConditionalBuilder(
                          condition: state is! DeleteItemFromCartLoadingState,
                          builder: (context) => InkWell(
                                onTap: () {
                                  cubit.decreaseQuantity(cartItem.id);
                                },
                                child: CircleAvatar(
                                  backgroundColor:
                                      AppColors.surface.withOpacity(0.22),
                                  child: SvgPicture.asset(
                                    AssetsData.delete,
                                    color: AppColors.surface,
                                    height: 15,
                                  ),
                                ),
                              ),
                          fallback: (context) => CircularProgressIndicator()),
                    ],
                  ),
                ),
                // contentPadding: const EdgeInsets.all(20.0),
              ),
            ],
          );
        },
      ),
    );
  }
}
