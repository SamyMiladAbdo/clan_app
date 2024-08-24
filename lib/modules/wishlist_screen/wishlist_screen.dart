import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/widgets/custom_app_bar.dart';
import 'package:clan_app/core/utils/widgets/product_widget.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: "المفضلة",
        context: context,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          right: defaultPadding,
          left: defaultPadding,
          top: 31.0,
          bottom: defaultPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "المفضلة",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                  color: Colors.black),
            ),
            const VerticalSpace(30.0),
            Expanded(
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                mainAxisSpacing: 25.0,
                crossAxisSpacing: 9.0,
                childAspectRatio: 1 / 1.5,
                children: List.generate(6, (index) {
                  return const Expanded(
                      child: ProductWidget(
                    isfavourite: true,
                  ));
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
