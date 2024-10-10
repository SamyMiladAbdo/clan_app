import 'package:clan_app/modules/sign_up_screen/cubit/cubit.dart';
import 'package:clan_app/modules/sign_up_screen/cubit/states.dart';
import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/widgets/custom_elevated_button.dart';
import 'package:clan_app/core/utils/widgets/custom_text_form_filed.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:clan_app/generated/l10n.dart';
import 'package:clan_app/routes/app_routes.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    final formKey = GlobalKey<FormState>();
    return BlocProvider(
      create: (BuildContext context) => SignUpCubit(),
      child: BlocConsumer<SignUpCubit, SignUpStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = SignUpCubit.get(context);

          var local = S.of(context);

          return Scaffold(
            body: Center(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Form(
                  key: formKey,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: defaultPadding,
                          vertical: defaultPadding * 2),
                      child: Column(
                        children: [
                          Text(
                            local.confirmPhoneNumber,
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 26.0,
                              color: AppColors.black,
                            ),
                          ),
                          const VerticalSpace(47.0),
                          CustomTextFormField(
                            controller: phoneController,
                            label: local.phoneNumber,
                            keyboardType: TextInputType.phone,
                            validator: local.validate,
                            prefixIcon: SvgPicture.asset(
                              AssetsData.call,
                              color: AppColors.tertiary,
                            ),
                          ),
                          const VerticalSpace(45.0),
                          ConditionalBuilder(
                              condition: state is! SendPhoneNumberLoadingState,
                              builder: (context) => CustomElevatedButton(
                                    onPressed: () {
                                      if (formKey.currentState!.validate()) {
                                        cubit.sendPhoneNumber(
                                            phoneController.text, context);
                                      }
                                    },
                                    backgroundColor: AppColors.tertiary,
                                    child: Text(
                                      local.Continue,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20.0,
                                        color: AppColors.black,
                                      ),
                                    ),
                                  ),
                              fallback: (context) =>
                                  Center(child: CircularProgressIndicator()))
                        ],
                      ),
                    ),
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
