import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/widgets/custom_divider.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:clan_app/generated/l10n.dart';
import 'package:clan_app/core/utils/widgets/custom_app_bar.dart';
import 'package:clan_app/modules/wallet_screen/widgets/current_balance_widget.dart';
import 'package:clan_app/modules/wallet_screen/widgets/history_item_widget.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var local = S.of(context);
    return Scaffold(
      appBar: customAppBar(
        title: "المحفظة",
        context: context,
        isActionIcon: false,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 54.0,
            horizontal: defaultPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // current balance widget
              const CurrentBalanceWidget(),
              const VerticalSpace(35.0),
              const Text(
                "السجل",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18.0,
                  color: Colors.black,
                ),
              ),
              const VerticalSpace(35.0),
              // history list
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => const HistoryItemWidget(),
                separatorBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(
                    top: VerticalSpace.padding(17.0),
                    bottom: VerticalSpace.padding(25.0),
                  ),
                  child: const CustomDivider1(),
                ),
                itemCount: 6,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
