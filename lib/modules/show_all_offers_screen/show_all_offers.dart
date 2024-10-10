import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/widgets/custom_app_bar.dart';
import 'package:clan_app/modules/show_all_offers_screen/widgets/offer_widget.dart';
import 'package:flutter/material.dart';

class ShowAllOffers extends StatelessWidget {
  const ShowAllOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: "عرض الكل",
        context: context,
        isActionIcon: false,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 11.0,
            horizontal: defaultPadding,
          ),
          child: Column(
            children: [
              Expanded(
                child: GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  mainAxisSpacing: 43.0,
                  crossAxisSpacing: 13.0,
                  childAspectRatio: 1 / 2,
                  children: List.generate(4, (index) {
                    return const OfferWidget();
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
