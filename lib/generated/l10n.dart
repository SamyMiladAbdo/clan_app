// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Choose your rank to continue using your tasks with ease:`
  String get chooseYourRankToContinueUsingYourTasksWithEase {
    return Intl.message(
      'Choose your rank to continue using your tasks with ease:',
      name: 'chooseYourRankToContinueUsingYourTasksWithEase',
      desc: '',
      args: [],
    );
  }

  /// `Supervisor`
  String get supervisor {
    return Intl.message(
      'Supervisor',
      name: 'supervisor',
      desc: '',
      args: [],
    );
  }

  /// `Representative`
  String get representative {
    return Intl.message(
      'Representative',
      name: 'representative',
      desc: '',
      args: [],
    );
  }

  /// `Brought`
  String get brought {
    return Intl.message(
      'Brought',
      name: 'brought',
      desc: '',
      args: [],
    );
  }

  /// `Please select your rank`
  String get pleaseSelectYourRank {
    return Intl.message(
      'Please select your rank',
      name: 'pleaseSelectYourRank',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Email or mobile`
  String get emailOrMobile {
    return Intl.message(
      'Email or mobile',
      name: 'emailOrMobile',
      desc: '',
      args: [],
    );
  }

  /// `This field is required`
  String get validate {
    return Intl.message(
      'This field is required',
      name: 'validate',
      desc: '',
      args: [],
    );
  }

  /// `password`
  String get password {
    return Intl.message(
      'password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Remember me`
  String get rememberMe {
    return Intl.message(
      'Remember me',
      name: 'rememberMe',
      desc: '',
      args: [],
    );
  }

  /// `Forgot your password?`
  String get forgotYourPassword {
    return Intl.message(
      'Forgot your password?',
      name: 'forgotYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Create account`
  String get createAccount {
    return Intl.message(
      'Create account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Triple Name`
  String get tripleName {
    return Intl.message(
      'Triple Name',
      name: 'tripleName',
      desc: '',
      args: [],
    );
  }

  /// `ID number`
  String get IdNumber {
    return Intl.message(
      'ID number',
      name: 'IdNumber',
      desc: '',
      args: [],
    );
  }

  /// `E-mail`
  String get email {
    return Intl.message(
      'E-mail',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get phoneNumber {
    return Intl.message(
      'Phone number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get Continue {
    return Intl.message(
      'Continue',
      name: 'Continue',
      desc: '',
      args: [],
    );
  }

  /// `Track location in background`
  String get trackLocationInBackground {
    return Intl.message(
      'Track location in background',
      name: 'trackLocationInBackground',
      desc: '',
      args: [],
    );
  }

  /// `In order for the Clan app to send and distribute requests close to you, it requires permission to track location. You can stop tracking from settings`
  String get inOrderForTheClanAppToSendAndDistributeRequestsCloseToYou {
    return Intl.message(
      'In order for the Clan app to send and distribute requests close to you, it requires permission to track location. You can stop tracking from settings',
      name: 'inOrderForTheClanAppToSendAndDistributeRequestsCloseToYou',
      desc: '',
      args: [],
    );
  }

  /// `Activate`
  String get activate {
    return Intl.message(
      'Activate',
      name: 'activate',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Confirm number`
  String get confirmNumber {
    return Intl.message(
      'Confirm number',
      name: 'confirmNumber',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Phone Number`
  String get confirmPhoneNumber {
    return Intl.message(
      'Confirm Phone Number',
      name: 'confirmPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the code we just sent to your number:`
  String get pleaseEnterTheCodeWeJustSentToYourNumber {
    return Intl.message(
      'Please enter the code we just sent to your number:',
      name: 'pleaseEnterTheCodeWeJustSentToYourNumber',
      desc: '',
      args: [],
    );
  }

  /// `Didn't you receive any message?`
  String get didNotYouReceiveAnyMessage {
    return Intl.message(
      'Didn\'t you receive any message?',
      name: 'didNotYouReceiveAnyMessage',
      desc: '',
      args: [],
    );
  }

  /// `Resend`
  String get resend {
    return Intl.message(
      'Resend',
      name: 'resend',
      desc: '',
      args: [],
    );
  }

  /// `Registration done`
  String get registrationDone {
    return Intl.message(
      'Registration done',
      name: 'registrationDone',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations.... You can now enjoy the benefits of the application smoothly..`
  String get congratulationsYouCanNowEnjoyTheBenefitsOfTheApplicationSmoothly {
    return Intl.message(
      'Congratulations.... You can now enjoy the benefits of the application smoothly..',
      name: 'congratulationsYouCanNowEnjoyTheBenefitsOfTheApplicationSmoothly',
      desc: '',
      args: [],
    );
  }

  /// `Do you have an existing account? `
  String get doYouHaveAnExistingAccount {
    return Intl.message(
      'Do you have an existing account? ',
      name: 'doYouHaveAnExistingAccount',
      desc: '',
      args: [],
    );
  }

  /// `You will find the service you need easily...`
  String get youWillFindTheServiceYouNeedEasily {
    return Intl.message(
      'You will find the service you need easily...',
      name: 'youWillFindTheServiceYouNeedEasily',
      desc: '',
      args: [],
    );
  }

  /// `Current location`
  String get currentLocation {
    return Intl.message(
      'Current location',
      name: 'currentLocation',
      desc: '',
      args: [],
    );
  }

  /// `Captain's Case`
  String get captainCase {
    return Intl.message(
      'Captain\'s Case',
      name: 'captainCase',
      desc: '',
      args: [],
    );
  }

  /// `You are now available to receive orders`
  String get YouAreNowAvailableToReceiveOrders {
    return Intl.message(
      'You are now available to receive orders',
      name: 'YouAreNowAvailableToReceiveOrders',
      desc: '',
      args: [],
    );
  }

  /// `Active requests`
  String get activeRequests {
    return Intl.message(
      'Active requests',
      name: 'activeRequests',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
