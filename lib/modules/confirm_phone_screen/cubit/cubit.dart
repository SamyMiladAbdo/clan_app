import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:clan_app/core/network/end_points.dart';
import 'package:clan_app/core/network/local/cache_helper.dart';
import 'package:clan_app/core/network/remote/dio_helper.dart';
import 'package:clan_app/core/utils/custom_snack_bar.dart';
import 'package:clan_app/modules/confirm_phone_screen/cubit/states.dart';
import 'package:clan_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ConfirmPhoneCubit extends Cubit<ConfirmPhoneStates> {
  ConfirmPhoneCubit() : super(ConfirmPhoneInitialState());
  static ConfirmPhoneCubit get(context) => BlocProvider.of(context);
  Future sendOTP(String phoneNumber,String otp , String token, context) async {
    emit(SendOTPLoadingState());
    await DioHelper.postData(url: EndPoints.SEND_OTP, data: {
      "phone_number": phoneNumber,
      "otp": otp,
      "token": token
    }).then((value) {
      print(value.data);
      value.data["tokens"]["access"] != null
          ? token = value.data["tokens"]["access"]
          : null;
      value.data["tokens"]["access"] != null
          ? CacheHelper.putString(
              key: "token", value: value.data["tokens"]["access"])
          : null;
      customSnackBar(
        context: context,
        contentType: ContentType.success,
        message: value.data["message"],
      );
      Navigator.pushNamed(
        context,
        AppRoutes.layoutScreen,
      );
      emit(SendOTPSuccessState());
    }).catchError((error) {
      print(error.response);

      emit(SendOTPErrorState());
    });
  }

  String? token;
  Future resendOTP(String phoneNumber, context) async {
    emit(ResendOTPLoadingState());
    await DioHelper.postData(url: EndPoints.SEND_PHONE_NUMBER, data: {
      "phone_number": phoneNumber,
    }).then((value) {
      print(value.data);
      print(value.data["tokens"]["access"]);
      value.data["tokens"]["access"] != null
          ? token = value.data["token"]
          : null;
      value.data["tokens"]["access"] != null
          ? CacheHelper.putString(
              key: "token", value: value.data["tokens"]["access"])
          : null;
      Navigator.pushNamed(
        context,
        AppRoutes.layoutScreen,
      );
      emit(ResendOTPSuccessState());
    }).catchError((error) {
      customSnackBar(
          context: context,
          contentType: ContentType.failure,
          message: error.toString());
      print(error);
      emit(ResendOTPErrorState());
    });
  }
}
