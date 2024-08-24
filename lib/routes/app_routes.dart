import 'package:clan_app/layout/layout_screen.dart';
import 'package:clan_app/modules/add_new_address_screen/add_new_address.dart';
import 'package:clan_app/modules/change_address_screen/change_address_screen.dart';
import 'package:clan_app/modules/check_out_screen/check_out_screen.dart';
import 'package:clan_app/modules/choose_payment_screen/choose_payment_screen.dart';
import 'package:clan_app/modules/common_questions_screen/common_questions_screen.dart';
import 'package:clan_app/modules/details_screen/details_screen.dart';
import 'package:clan_app/modules/edit_account_screen/edit_account_screen.dart';
import 'package:clan_app/modules/home_screen/home_screen.dart';
import 'package:clan_app/modules/loading_request_screen/loading_request_screen.dart';
import 'package:clan_app/modules/my_addresses_screen/my_addresses_screen.dart';
import 'package:clan_app/modules/search_screen/search_screen.dart';
import 'package:clan_app/modules/show_all_offers_screen/show_all_offers.dart';
import 'package:clan_app/modules/splash_screen/splash_screen.dart';
import 'package:clan_app/modules/support_screen/support_screen.dart';
import 'package:clan_app/modules/terms_and_privacy_screen/terms_and_privacy_screen.dart';
import 'package:clan_app/modules/wallet_screen/wallet_screen.dart';
import 'package:clan_app/modules/wishlist_screen/wishlist_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static String initialRoute = '/initialRoute';
  static String splashScreen = '/splash_screen';
  static String layoutScreen = '/layout';
  static String homeScreen = '/home_screen';
  static String wishlistScreen = '/wishlist_screen';
  static String checkoutScreen = '/check_out_screen';
  static String choosePaymentScreen = '/choose_payment_screen';
  static String searchScreen = '/search_screen';
  static String showAllOffersScreen = '/show_all_offers_screen';
  static String changeAddress = '/change_address_screen';
  static String addNewAddressScreen = '/add_new_address_screen';
  static String detailsScreen = '/details_screen';
  static String myAddressesScreen = '/my_addresses_screen';
  static String supportScreen = '/support_screen';
  static String walletScreen = '/wallet_screen';
  static String editAccountScreen = '/edit_account_screen';
  static String loadingRequestScreen = '/loading_request_screen';
  static String commonQuestionsScreen = '/common_questions_screen';
  static String termsAndPrivacyScreen = '/terms_and_privacy_screen';

  static Map<String, WidgetBuilder> routes = {
    initialRoute: (context) => const SplashScreen(
          widget: LayoutScreen(),
        ),
    splashScreen: (context) => const SplashScreen(
          widget: LayoutScreen(),
        ),
    layoutScreen: (context) => const LayoutScreen(),
    homeScreen: (context) => HomeScreen(),
    wishlistScreen: (context) => const WishlistScreen(),
    checkoutScreen: (context) => const CheckOutScreen(),
    choosePaymentScreen: (context) => const ChoosePaymentScreen(),
    searchScreen: (context) => SearchScreen(),
    showAllOffersScreen: (context) => const ShowAllOffers(),
    changeAddress: (context) => const ChangeAddressScreen(),
    addNewAddressScreen: (context) => const AddNewAddress(),
    detailsScreen: (context) => const DetailsScreen(),
    myAddressesScreen: (context) => const MyAddressesScreen(),
    supportScreen: (context) => const SupportScreen(),
    walletScreen: (context) => const WalletScreen(),
    editAccountScreen: (context) => const EditAccountScreen(),
    loadingRequestScreen: (context) => const LoadingRequestScreen(),
    commonQuestionsScreen: (context) => const CommonQuestionsScreen(),
    termsAndPrivacyScreen: (context) => const TermsAndPrivacyScreen(),
  };
}
