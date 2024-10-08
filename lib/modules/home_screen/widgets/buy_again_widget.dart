import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:clan_app/core/utils/widgets/product_widget/product_widget.dart';
import 'package:clan_app/models/products_model.dart';
import 'package:clan_app/routes/app_routes.dart';
import 'package:flutter/material.dart';

class BuyAgainWidget extends StatelessWidget {
  const BuyAgainWidget({
    super.key,
    required this.productsModel,
  });
  final ProductsModel productsModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              "اطلب مرة ثانية",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                  color: Colors.black),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.wishlistScreen);
              },
              child: const Text(
                "المنتجات المفضلة",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12.0,
                    color: AppColors.tertiary),
              ),
            ),
          ],
        ),
        const VerticalSpace(8.0),
        SizedBox(
          height: 145.0,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => ProductWidget(
              productPrice: productsModel.results![index].number!,
              productId: productsModel.results![index].id!,
              // TODO put the unit of the product
              productUnit: productsModel.results![index].id!,
            ),
            separatorBuilder: (context, index) => const HorizintalSpace(20.0),
            itemCount: productsModel.results!.length,
          ),
        )
      ],
    );
  }
}
