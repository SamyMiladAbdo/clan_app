import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/layout/cubit/states.dart';
import 'package:clan_app/modules/account_screen/account_screen.dart';
import 'package:clan_app/modules/cart_screen/cart_screen.dart';
import 'package:clan_app/modules/home_screen/home_screen.dart';
import 'package:clan_app/modules/requests_screen/requests_screen.dart';
import 'package:clan_app/modules/search_screen/search_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class LayoutCubit extends Cubit<LayoutStates> {
  LayoutCubit() : super(LayoutInitialState());
  static LayoutCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  void changeIndex(int index) {
    currentIndex = index;
    emit(ChangeBottomNavBarState());
  }

  List screens = [
    HomeScreen(),
    const CartScreen(),
    SearchScreen(),
    const RequestsScreen(),
    const AccountScreen(),
  ];
  List<BottomNavigationBarItem> bottomNavBarItems = [
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        AssetsData.home,
        color: AppColors.gray,
      ),
      label: 'مقاضي',
      activeIcon: SvgPicture.asset(
        AssetsData.home,
        color: AppColors.onSecondary,
      ),
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        AssetsData.buy,
        color: AppColors.gray,
      ),
      label: 'السلة',
      activeIcon: SvgPicture.asset(
        AssetsData.buy,
        color: AppColors.onSecondary,
      ),
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        AssetsData.search,
        color: AppColors.gray,
      ),
      label: 'بحث',
      activeIcon: SvgPicture.asset(
        AssetsData.search,
        color: AppColors.onSecondary,
      ),
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        AssetsData.document,
        color: AppColors.gray,
      ),
      label: 'الطلبات',
      activeIcon: SvgPicture.asset(
        AssetsData.document,
        color: AppColors.onSecondary,
      ),
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        AssetsData.profile,
        color: AppColors.gray,
      ),
      label: 'حسابي',
      activeIcon: SvgPicture.asset(
        AssetsData.profile,
        color: AppColors.onSecondary,
      ),
    ),
  ];
}
