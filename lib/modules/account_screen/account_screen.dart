import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:clan_app/modules/account_screen/cubit/cubit.dart';
import 'package:clan_app/modules/account_screen/cubit/states.dart';
import 'package:clan_app/modules/account_screen/widgets/complete_your_profile_widget.dart';
import 'package:clan_app/modules/account_screen/widgets/profile_widget.dart';
import 'package:clan_app/modules/account_screen/widgets/settings_widget.dart';
import 'package:clan_app/modules/account_screen/widgets/subscripe_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AccountCubit(),
      child: BlocConsumer<AccountCubit, AccountStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = AccountCubit.get(context);
          return Scaffold(
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 49.0,
                  horizontal: defaultPadding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // profile listTile
                    const ProfileWidget(),
                    // complete your profile Button
                    const CompleteYourProfileWidget(),
                    // subscripe premium button
                    const SubscripeWidget(),
                    const VerticalSpace(40.0),
                    // account settings
                    const Text(
                      "الحساب",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 19.0,
                        color: Colors.black,
                      ),
                    ),
                    const VerticalSpace(25.0),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Navigator.pushNamed(context,
                              cubit.accountSettings[index]["navigate_to"]);
                        },
                        child: SettingsWidget(
                          assetName: cubit.accountSettings[index]["icon"],
                          title: cubit.accountSettings[index]["title"],
                        ),
                      ),
                      separatorBuilder: (context, index) =>
                          const VerticalSpace(20.0),
                      itemCount: cubit.accountSettings.length,
                    ),

                    // My coupons
                    Padding(
                      padding: EdgeInsets.only(
                        top: VerticalSpace.padding(35.0),
                        bottom: VerticalSpace.padding(25.0),
                      ),
                      child: const Text(
                        "قسائمي",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 19.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Navigator.pushNamed(context,
                              cubit.copounsSettings[index]["navigate_to"]);
                        },
                        child: SettingsWidget(
                          assetName: cubit.copounsSettings[index]["icon"],
                          title: cubit.copounsSettings[index]["title"],
                        ),
                      ),
                      separatorBuilder: (context, index) =>
                          const VerticalSpace(20.0),
                      itemCount: cubit.copounsSettings.length,
                    ),
                    // support
                    Padding(
                      padding: EdgeInsets.only(
                        top: VerticalSpace.padding(35.0),
                        bottom: VerticalSpace.padding(25.0),
                      ),
                      child: const Text(
                        "مساعدة",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 19.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Navigator.pushNamed(context,
                              cubit.supportSettings[index]["navigate_to"]);
                        },
                        child: SettingsWidget(
                          assetName: cubit.supportSettings[index]["icon"],
                          title: cubit.supportSettings[index]["title"],
                        ),
                      ),
                      separatorBuilder: (context, index) =>
                          const VerticalSpace(20.0),
                      itemCount: cubit.supportSettings.length,
                    ),
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
