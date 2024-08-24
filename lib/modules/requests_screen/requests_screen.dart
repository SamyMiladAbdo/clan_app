import 'package:clan_app/core/utils/widgets/custom_app_bar.dart';
import 'package:clan_app/core/utils/widgets/custom_divider.dart';
import 'package:clan_app/modules/requests_screen/widgets/request_widget.dart';
import 'package:flutter/material.dart';

class RequestsScreen extends StatelessWidget {
  const RequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: "الطلبات",
        context: context,
        isActionIcon: false,
        isleadingIcon: false,
      ),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => const RequestWidget(),
        separatorBuilder: (context, index) => const CustomDivider1(),
        itemCount: 5,
      ),
    );
  }
}
