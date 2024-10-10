import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:clan_app/core/network/end_points.dart';
import 'package:clan_app/core/network/local/cache_helper.dart';
import 'package:clan_app/core/network/remote/dio_helper.dart';
import 'package:clan_app/core/utils/custom_snack_bar.dart';
import 'package:clan_app/modules/sign_up_screen/cubit/states.dart';
import 'package:clan_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpStates> {
  SignUpCubit() : super(SignUpInitialState());
  static SignUpCubit get(context) => BlocProvider.of(context);
  String? token;
  Future sendPhoneNumber(String phoneNumber, context) async {
    emit(SendPhoneNumberLoadingState());
    DioHelper.postData(url: EndPoints.SEND_PHONE_NUMBER, data: {
      "phone_number": phoneNumber,
    }).then((value) {
      print(value.data);
      value.data["token"] != null
          ? CacheHelper.putString(key: "token", value: value.data["token"])
          : null;
      customSnackBar(
          context: context,
          contentType: ContentType.success,
          message: "The OTP sent");
      Navigator.pushNamed(
        context,
        AppRoutes.confirmPhoneScreen,
        arguments: phoneNumber,
      );
      emit(SendPhoneNumberSuccessState());
    }).catchError((error) {
      customSnackBar(
          context: context,
          contentType: ContentType.failure,
          message: error.toString());
      print(error.response);
      emit(SendPhoneNumberErrorState());
    });
  }
}
