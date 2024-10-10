import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/widgets/custom_app_bar.dart';
import 'package:clan_app/core/utils/widgets/custom_elevated_button.dart';
import 'package:clan_app/core/utils/widgets/custom_text_form_filed.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:flutter/material.dart';

class EditAccountScreen extends StatelessWidget {
  const EditAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    return Scaffold(
      appBar: customAppBar(
        title: "تعديل معلومات\nالملف الشخصي",
        context: context,
        isActionIcon: false,
      ),
      bottomSheet: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: defaultPadding,
          vertical: VerticalSpace.padding(75.0),
        ),
        child: SizedBox(
          width: double.infinity,
          child: CustomElevatedButton(
            onPressed: () {
              // Navigator.pushNamed(context, AppRoutes.checkoutScreen);
            },
            backgroundColor: AppColors.onSecondary,
            child: const Text(
              "حفظ",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20.0,
                color: AppColors.black,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
            top: 34.0,
            start: 32.0,
            end: 28.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "الاسم الثلاثي",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13.0,
                  color: const Color(0xFF16002B).withOpacity(0.76),
                ),
              ),
              const VerticalSpace(6.0),
              CustomTextFormField(
                controller: nameController,
                label: "الاسم الثلاثي",
                keyboardType: TextInputType.name,
                validator: "Name must't be empty",
              ),
              const SizedBox(height: 25.0),
              Text(
                "البريد الإلكتروني",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13.0,
                  color: const Color(0xFF16002B).withOpacity(0.76),
                ),
              ),
              const VerticalSpace(6.0),
              CustomTextFormField(
                controller: emailController,
                label: "البريد الإلكتروني",
                keyboardType: TextInputType.emailAddress,
                validator: "Email Address must't be empty",
              ),
              const SizedBox(height: 25.0),
              Text(
                "رقم الهاتف",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13.0,
                  color: const Color(0xFF16002B).withOpacity(0.76),
                ),
              ),
              const VerticalSpace(6.0),
              CustomTextFormField(
                controller: phoneController,
                label: "رقم الهاتف",
                keyboardType: TextInputType.phone,
                validator: "Phone must't be empty",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
