import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/network/local/cache_helper.dart';
import 'package:clan_app/core/utils/widgets/custom_elevated_button.dart';
import 'package:clan_app/core/utils/widgets/custom_text_form_filed.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:clan_app/generated/l10n.dart';
import 'package:clan_app/modules/confirm_phone_screen/cubit/cubit.dart';
import 'package:clan_app/modules/confirm_phone_screen/cubit/states.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

  var codeController = TextEditingController();

class ConfirmPhoneScreen extends StatelessWidget {
  ConfirmPhoneScreen({super.key, required this.phoneNumber});
  final String phoneNumber;

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ConfirmPhoneCubit(),
      child: BlocConsumer<ConfirmPhoneCubit, ConfirmPhoneStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = ConfirmPhoneCubit.get(context);

          var local = S.of(context);

          return Scaffold(
            body: Center(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25.0),
                      topLeft: Radius.circular(25.0),
                    ),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.only(
                    right: defaultPadding,
                    left: defaultPadding,
                    top: VerticalSpace.padding(105.0),
                    bottom: VerticalSpace.padding(178.0),
                  ),
                  child: Column(
                    children: [
                      Text(
                        local.confirmNumber,
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 26.0,
                          color: AppColors.black,
                        ),
                      ),
                      const VerticalSpace(47.0),
                      Text(
                        local.pleaseEnterTheCodeWeJustSentToYourNumber,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 19.0,
                          color: AppColors.black,
                        ),
                      ),
                      const VerticalSpace(20.0),
                      Text(
                        phoneNumber,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 19.0,
                          color: AppColors.black,
                        ),
                      ),
                      const VerticalSpace(25.0),
                      CustomTextFormField(
                        label: "OTP number",
                        keyboardType: TextInputType.number,
                        validator: local.validate,
                        controller: codeController,
                      ),
                      const VerticalSpace(28.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            local.didNotYouReceiveAnyMessage,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0,
                              color: AppColors.black,
                            ),
                          ),
                          ConditionalBuilder(
                              condition: state is! ResendOTPLoadingState,
                              builder: (context) => TextButton(
                                    onPressed: () {
                                      cubit.resendOTP(phoneNumber, context);
                                    },
                                    style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero),
                                    child: Text(
                                      local.resend,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20.0,
                                        color: AppColors.tertiary,
                                      ),
                                    ),
                                  ),
                              fallback: (context) =>
                                  Center(child: CircularProgressIndicator()))
                        ],
                      ),
                      const VerticalSpace(28.0),
                      ConditionalBuilder(
                          condition: state is! SendOTPLoadingState,
                          builder: (context) => CustomElevatedButton(
                              onPressed: () {
                                // if (formKey.currentState!.validate()) {
                                cubit.sendOTP(
                                  phoneNumber,
                                  //if he make resend use the new token
                                  codeController.text,
                                  CacheHelper.getData(key: "token"),
                                  
                                  context,
                                );
                                // }
                              },
                              backgroundColor: AppColors.tertiary,
                              child: const Text(
                                "استمرار",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.0,
                                  color: AppColors.black,
                                ),
                              )),
                          fallback: (context) =>
                              Center(child: CircularProgressIndicator()))
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
