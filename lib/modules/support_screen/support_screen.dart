import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/widgets/custom_app_bar.dart';
import 'package:clan_app/core/utils/widgets/custom_divider.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:clan_app/modules/support_screen/cubit/cubit.dart';
import 'package:clan_app/modules/support_screen/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SupportCubit(),
      child: BlocConsumer<SupportCubit, SupportStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = SupportCubit.get(context);
          return Scaffold(
            appBar: customAppBar(
              title: "#2132142323",
              context: context,
              isActionIcon: false,
            ),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: defaultPadding,
                ),
                child: Column(
                  children: [
                    const Text(
                      "الرجاء اختيار المشكلة التي تواجهك:",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 19.0,
                        color: AppColors.black,
                      ),
                    ),
                    const VerticalSpace(27.0),
                    ExpansionPanelList(
                      expansionCallback: (int index, bool isExpanded) {
                        cubit.changeExpandedValue(index, isExpanded);
                      },
                      children: [
                        ExpansionPanel(
                            isExpanded: cubit.isExpanded1,
                            backgroundColor: Colors.white,
                            canTapOnHeader: true,
                            headerBuilder: (context, isExpanded) => Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      start: VerticalSpace.padding(19.0)),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        AssetsData.profile,
                                        color: AppColors.tertiary,
                                      ),
                                      const HorizintalSpace(11.0),
                                      const Text(
                                        "مشكلة متعلقة بالطلب",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16.0,
                                          color: AppColors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                            body: Padding(
                              padding: EdgeInsetsDirectional.only(
                                start: VerticalSpace.padding(19.0),
                                bottom: 30.0,
                              ),
                              child: ListView.separated(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) => Text(
                                  cubit.list1[index],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.0,
                                    color: AppColors.black,
                                  ),
                                ),
                                separatorBuilder: (context, index) => Padding(
                                  padding: EdgeInsets.only(
                                      top: VerticalSpace.padding(17.0),
                                      bottom: VerticalSpace.padding(38.0)),
                                  child: const CustomDivider1(),
                                ),
                                itemCount: cubit.list1.length,
                              ),
                            )),
                        ExpansionPanel(
                            isExpanded: cubit.isExpanded2,
                            backgroundColor: Colors.white,
                            canTapOnHeader: true,
                            headerBuilder: (context, isExpanded) => Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      start: VerticalSpace.padding(19.0)),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        AssetsData.star,
                                        color: AppColors.tertiary,
                                      ),
                                      const HorizintalSpace(11.0),
                                      const Text(
                                        "مشكلة متعلقة بمبلغ مالي",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16.0,
                                          color: AppColors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                            body: Padding(
                              padding: EdgeInsetsDirectional.only(
                                start: VerticalSpace.padding(19.0),
                                bottom: 30.0,
                              ),
                              child: ListView.separated(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) => Text(
                                  cubit.list2[index],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.0,
                                    color: AppColors.black,
                                  ),
                                ),
                                separatorBuilder: (context, index) => Padding(
                                  padding: EdgeInsets.only(
                                      top: VerticalSpace.padding(17.0),
                                      bottom: VerticalSpace.padding(38.0)),
                                  child: const CustomDivider1(),
                                ),
                                itemCount: cubit.list2.length,
                              ),
                            )),
                      ],
                    )
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
