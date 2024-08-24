import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/widgets/custom_app_bar.dart';
import 'package:clan_app/core/utils/widgets/custom_divider.dart';
import 'package:clan_app/core/utils/widgets/custom_elevated_button.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:clan_app/modules/my_addresses_screen/widgets/address_widget.dart';
import 'package:flutter/material.dart';

class MyAddressesScreen extends StatelessWidget {
  const MyAddressesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: "عناويني",
        context: context,
        isActionIcon: false,
      ),
      //to make add new address button at the bottom
      bottomSheet: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: defaultPadding,
          vertical: VerticalSpace.padding(75.0),
        ),
        child: SizedBox(
          width: double.infinity,
          child: CustomElevatedButton(
            onPressed: () {
              // Navigator.pushNamed(context, AppRoutes.checkoutScreen);
            },
            backgroundColor: AppColors.onSecondary,
            child: const Text(
              "إضافة عنوان جديد",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20.0,
                color: AppColors.black,
              ),
            ),
          ),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 50.0,
          horizontal: defaultPadding,
        ),
        child: ListView.separated(
          itemBuilder: (context, index) => const AddressWidget(),
          separatorBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(
              top: VerticalSpace.padding(30.0),
              bottom: VerticalSpace.padding(34.0),
            ),
            child: const CustomDivider1(),
          ),
          itemCount: 4,
        ),
      ),
    );
  }
}
