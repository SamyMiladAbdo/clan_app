import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/network/local/cache_helper.dart';
import 'package:clan_app/layout/cubit/cubit.dart';
import 'package:clan_app/layout/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        if (CacheHelper.getData(key: "anonymousKey") == null)
          return LayoutCubit()..getAnonymousKey();
        else
          return LayoutCubit();
      },
      child: BlocConsumer<LayoutCubit, LayoutStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = LayoutCubit.get(context);
          return Scaffold(
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              items: cubit.bottomNavBarItems,
              currentIndex: cubit.currentIndex,
              onTap: (index) {
                cubit.changeIndex(index);
              },
              unselectedLabelStyle: const TextStyle(
                  fontFamily: "Tajawal",
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                  color: AppColors.gray),
              showUnselectedLabels: true,
              selectedItemColor: AppColors.black,
              unselectedItemColor: AppColors.gray,
              selectedLabelStyle: const TextStyle(
                fontFamily: "Tajawal",
                fontWeight: FontWeight.w500,
                fontSize: 10,
                color: AppColors.black,
              ),
            ),
          );
        },
      ),
    );
  }
}
