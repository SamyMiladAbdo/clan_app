import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/modules/account_screen/cubit/states.dart';
import 'package:clan_app/routes/app_routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountCubit extends Cubit<AccountStates> {
  AccountCubit() : super(AccountInitialState());
  static AccountCubit get(context) => BlocProvider.of(context);
  //account
  List<Map> accountSettings = [
    {
      "icon": AssetsData.wallet,
      "title": "المحفظة",
      "navigate_to": AppRoutes.walletScreen,
    },
    {
      "icon": AssetsData.profile,
      "title": "عناويني",
      "navigate_to": AppRoutes.myAddressesScreen,
    },
    {
      "icon": AssetsData.star,
      "title": "المفضلة",
      "navigate_to": AppRoutes.wishlistScreen,
    },
    {
      "icon": AssetsData.wallet,
      "title": "طريقة الدفع",
      "navigate_to": AppRoutes.choosePaymentScreen,
      // "navigate_to":
    },
    {
      "icon": AssetsData.wallet,
      "title": "English",
    },
  ];
  //copouns
  List<Map> copounsSettings = [
    {
      "icon": AssetsData.wallet,
      "title": "الكوبونات",
      "navigate_to": "",
    },
    {
      "icon": AssetsData.wallet,
      "title": "رصيد مجاني",
      "navigate_to": "",
    },
  ];
  //support
  List<Map> supportSettings = [
    {
      "icon": AssetsData.wallet,
      "title": "اتصل بنا",
      "navigate_to": AppRoutes.supportScreen
    },
    {
      "icon": AssetsData.wallet,
      "title": "الملاحظات",
      "navigate_to": "",
    },
    {
      "icon": AssetsData.wallet,
      "title": "الأسئلة الشائعة",
      "navigate_to": AppRoutes.commonQuestionsScreen,
      // "navigate_to":
    },
    {
      "icon": AssetsData.wallet,
      "title": "الشروط والأحكام",
      "navigate_to": AppRoutes.termsAndPrivacyScreen,
      // "navigate_to":
    },
  ];
}
