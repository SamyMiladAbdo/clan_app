import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/size_config.dart';
import 'package:clan_app/core/utils/widgets/custom_app_bar.dart';
import 'package:clan_app/core/utils/widgets/custom_elevated_button.dart';
import 'package:clan_app/core/utils/widgets/custom_text_form_filed.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:clan_app/modules/add_new_address_screen/cubit/cubit.dart';
import 'package:clan_app/modules/add_new_address_screen/cubit/states.dart';
import 'package:clan_app/modules/add_new_address_screen/widgets/dialog_widget.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController descriptionController = TextEditingController();
    var _formKey = GlobalKey<FormState>();
    return BlocProvider(
      create: (BuildContext context) => AddNewAddressCubit(),
      child: BlocConsumer<AddNewAddressCubit, AddNewAddressStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = AddNewAddressCubit.get(context);
          return Scaffold(
            appBar: customAppBar(
              title: "إضافة عنوان جديد",
              context: context,
              isActionIcon: false,
            ),
            body: Form(
              key: _formKey,
              child: Stack(
                children: [
                  Container(
                    color: Colors.grey[400],
                    height: double.infinity,
                    width: double.infinity,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 145,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8.0,
                                    horizontal: 12.0,
                                  ),
                                  backgroundColor: Colors.white,
                                ),
                                onPressed: () {
                                  // cubit.getCurrentLocation();
                                },
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      AssetsData.send,
                                      color: AppColors.tertiary,
                                    ),
                                    const Text(
                                      "موقعي الحالي",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14.0,
                                        color: AppColors.black,
                                      ),
                                    )
                                  ],
                                )),
                          ),
                          const VerticalSpace(13.0),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(defaultRadius),
                                  topRight: Radius.circular(defaultRadius),
                                )),
                            padding: EdgeInsets.only(
                              top: 29.0,
                              right: defaultPadding,
                              left: defaultPadding,
                              bottom: 47.0,
                            ),
                            child: Column(
                              children: [
                                //three buttons
                                Row(
                                  children: [
                                    OutlinedButton(
                                      onPressed: () {
                                        //to change the selected button
                                        cubit.changeSelectedButton(0);
                                      },
                                      style: OutlinedButton.styleFrom(
                                        side: BorderSide(
                                            //if it selcted or not selected
                                            color: cubit.selectedButton == 0
                                                ? AppColors.tertiary
                                                : AppColors.gray),
                                        padding: EdgeInsets.symmetric(
                                          vertical: 4.0,
                                          horizontal:
                                              SizeConfig.screenWidth! * 0.08,
                                        ),
                                        backgroundColor:
                                            //if it selcted or not selected

                                            cubit.selectedButton == 0
                                                ? AppColors.onSecondary
                                                    .withOpacity(0.6)
                                                : Colors.white,
                                      ),
                                      child: const Text(
                                        "المنزل",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.0,
                                          color: AppColors.black,
                                        ),
                                      ),
                                    ),
                                    const HorizintalSpace(10.0),
                                    OutlinedButton(
                                      onPressed: () {
                                        cubit.changeSelectedButton(1);
                                      },
                                      style: OutlinedButton.styleFrom(
                                        side: BorderSide(
                                            color: cubit.selectedButton == 1
                                                ? AppColors.tertiary
                                                : AppColors.gray),
                                        padding: EdgeInsets.symmetric(
                                          vertical: 4.0,
                                          horizontal:
                                              SizeConfig.screenWidth! * 0.08,
                                        ),
                                        backgroundColor:
                                            cubit.selectedButton == 1
                                                ? AppColors.onSecondary
                                                    .withOpacity(0.6)
                                                : Colors.white,
                                      ),
                                      child: const Text(
                                        "العمل",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.0,
                                          color: AppColors.black,
                                        ),
                                      ),
                                    ),
                                    const HorizintalSpace(10.0),
                                    OutlinedButton(
                                      onPressed: () {
                                        cubit.changeSelectedButton(2);
                                      },
                                      style: OutlinedButton.styleFrom(
                                        side: BorderSide(
                                            color: cubit.selectedButton == 2
                                                ? AppColors.tertiary
                                                : AppColors.gray),
                                        //to set the button width and height
                                        padding: EdgeInsets.symmetric(
                                          vertical: 4.0,
                                          horizontal:
                                              SizeConfig.screenWidth! * 0.08,
                                        ),
                                        backgroundColor:
                                            cubit.selectedButton == 2
                                                ? AppColors.onSecondary
                                                    .withOpacity(0.6)
                                                : Colors.white,
                                      ),
                                      child: const Text(
                                        "أخرى",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.0,
                                          color: AppColors.black,
                                        ),
                                      ),
                                    )
                                  ],
                                ),

                                const VerticalSpace(23.0),
                                //to make the border is dotted
                                DottedBorder(
                                  radius: const Radius.circular(12.0),
                                  borderType: BorderType.RRect,
                                  color:
                                      const Color(0xFF16002B).withOpacity(0.25),
                                  child: CustomElevatedButton(
                                    onPressed: () {
                                      cubit.getImage();
                                    },
                                    backgroundColor: Colors.white,
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          " إرفاق صورة لمكان وضع الطلب بشكل دائم",
                                          style: TextStyle(
                                            fontFamily: "Almarai",
                                            fontWeight: FontWeight.w400,
                                            fontSize:
                                                SizeConfig.defaultSize! * 20.0,
                                            color: AppColors.black2,
                                          ),
                                        ),
                                        const HorizintalSpace(10.0),
                                        SvgPicture.asset(
                                          AssetsData.attachment,
                                          color: AppColors.tertiary,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const VerticalSpace(11.0),
                                CustomTextFormField(
                                  controller: descriptionController,
                                  label: "الوصف",
                                  keyboardType: TextInputType.text,
                                  validator: "الوصف مطلوب",
                                ),
                                const VerticalSpace(19.0),
                                ConditionalBuilder(
                                    condition: cubit.image != null,
                                    builder: (context) => Padding(
                                          padding: EdgeInsets.only(
                                              bottom:
                                                  VerticalSpace.padding(19.0)),
                                          child: Center(
                                            child: SizedBox(
                                              height: SizeConfig.screenHeight! *
                                                  0.4,
                                              width:
                                                  SizeConfig.screenWidth! * 0.7,
                                              child: Stack(
                                                children: [
                                                  InteractiveViewer(
                                                    clipBehavior: Clip.none,
                                                    minScale: 0.5,
                                                    maxScale: 3.0,
                                                    child: Image.file(
                                                      cubit.image!,
                                                    ),
                                                  ),
                                                  Positioned(
                                                    top: -10,
                                                    right: -10,
                                                    child: IconButton(
                                                      onPressed: () {
                                                        cubit.removeImage();
                                                      },
                                                      style:
                                                          IconButton.styleFrom(
                                                        backgroundColor:
                                                            AppColors
                                                                .onSecondary,
                                                      ),
                                                      icon: const Icon(
                                                        Icons.close,
                                                        color: AppColors.black,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                    fallback: null),
                                ConditionalBuilder(
                                    condition:
                                        state is! AddNewAddressLoadingState,
                                    builder: (context) => SizedBox(
                                          width: double.infinity,
                                          child: CustomElevatedButton(
                                            backgroundColor:
                                                AppColors.onSecondary,
                                            onPressed: () {
                                              if (_formKey.currentState!
                                                  .validate()) {
                                                cubit.addNewAddress(context,
                                                    descriptionController.text);
                                              }
                                            },
                                            child: const Text(
                                              "حفظ العنوان",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 20.0,
                                                color: AppColors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                    fallback: (context) => Center(
                                          child: CircularProgressIndicator(),
                                        ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
