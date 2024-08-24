import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/widgets/custom_app_bar.dart';
import 'package:clan_app/core/utils/widgets/custom_search_text_form_field.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:clan_app/modules/search_screen/cubit/cubit.dart';
import 'package:clan_app/modules/search_screen/cubit/states.dart';
import 'package:clan_app/modules/search_screen/widgets/filter_widget1.dart';
import 'package:clan_app/modules/search_screen/widgets/filter_widget2.dart';
import 'package:clan_app/modules/search_screen/widgets/search_grid_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  TextEditingController searchController = TextEditingController();
  // TabController tabController = TabController(length: 4, vsync: TickerProvider.);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SearchCubit(),
      child: BlocConsumer<SearchCubit, SearchStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = SearchCubit.get(context);
          return Scaffold(
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    color: AppColors.offWhite,
                    padding: const EdgeInsetsDirectional.only(
                      top: 46.0,
                      bottom: 11.0,
                      start: 25.0,
                      end: 24.0,
                    ),
                    child: CustomSearchTextFormField(
                        searchController: searchController),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                        top: defaultPadding,
                        start: 24.0,
                        end: defaultPadding,
                        bottom: defaultPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //the first filter
                        SizedBox(
                          height: 29.0,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (context, index) => FilterWidget1(
                                    selectedButton1: cubit.selectedButton1,
                                    index: index,
                                    text: cubit.categpries1[index],
                                  ),
                              separatorBuilder: (context, index) =>
                                  const HorizintalSpace(16.0),
                              itemCount: cubit.categpries1.length),
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),

                        //the second filter
                        SizedBox(
                          height: 29.0,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (context, index) => FilterWidget2(
                                    selectedButton2: cubit.selectedButton2,
                                    index: index,
                                    text: cubit.categpries2[index],
                                  ),
                              separatorBuilder: (context, index) =>
                                  const HorizintalSpace(16.0),
                              itemCount: cubit.categpries2.length),
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        const SearchGridWidget(
                          title: "اطلب مرة ثانية",
                        ),
                        const VerticalSpace(65.0),
                        const SearchGridWidget(
                          title: "جبنة دهنء",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
