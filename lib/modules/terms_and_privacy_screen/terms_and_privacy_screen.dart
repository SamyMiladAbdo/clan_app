import 'package:clan_app/core/constants/assets.dart';
import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/utils/widgets/custom_app_bar.dart';
import 'package:clan_app/core/utils/widgets/custom_search_text_form_field.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:clan_app/models/address_model.dart';
import 'package:clan_app/modules/change_address_screen/change_address_screen.dart';
import 'package:clan_app/modules/common_questions_screen/widgets/question_widget.dart';
import 'package:clan_app/modules/terms_and_privacy_screen/cubit/cubit.dart';
import 'package:clan_app/modules/terms_and_privacy_screen/cubit/states.dart';
import 'package:clan_app/modules/terms_and_privacy_screen/widgets/bottom_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class TermsAndPrivacyScreen extends StatelessWidget {
  const TermsAndPrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return BlocProvider(
      create: (BuildContext context) => TermsAndPrivacyCubit(),
      child: BlocConsumer<TermsAndPrivacyCubit, TermsAndPrivacyStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = TermsAndPrivacyCubit.get(context);
          return Scaffold(
            appBar: customAppBar(
              title: "الأسئلة الشائعة",
              context: context,
              isActionIcon: false,
            ),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  // rest of app bar
                  Container(
                    color: AppColors.offWhite,
                    padding: const EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 25.0,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              AssetsData.logo,
                              height: 75,
                              width: 73,
                              fit: BoxFit.cover,
                            ),
                            const Text(
                              "التوصيل إلى",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.0,
                              ),
                            ),
                            SvgPicture.asset(AssetsData.locate),
                            // DropdownButton(
                            //   items: cubit.items,
                            //   onChanged: (value) {
                            //     cubit.changeDropdownValue(value);
                            //   },
                            //   underline: const SizedBox(),
                            //   value: cubit.value,
                            // ),
                            TextButton(
                                onPressed: () {
                                  showBottomSheet(
                                      elevation: 10.0,
                                      context: context,
                                      backgroundColor: Colors.white,
                                      builder: (BuildContext context) =>
                                           ChangeAddressScreen(
                                            //TODO show this
                                            addressModel: AddressModel(),
                                          ));
                                },
                                style: ButtonStyle(
                                  padding: WidgetStateProperty.resolveWith(
                                    (events) {
                                      return const EdgeInsets.all(4);
                                    },
                                  ),
                                ),
                                child: const Row(
                                  children: [
                                    Text(
                                      "منزل 1",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color: AppColors.black,
                                    )
                                  ],
                                )),
                          ],
                        ),
                        CustomSearchTextFormField(
                          searchController: searchController,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      top: 45.0,
                      start: 25.0,
                      end: 29.0,
                    ),
                    child: Column(
                      children: [
                        const Text(
                          "الشروط والأحكام لاستخدام تطبيق النينجا",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                        const VerticalSpace(20.0),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) => QuestionWidget(
                            questionModel: cubit.questions[index],
                          ),
                          itemCount: cubit.questions.length,
                        ),
                        const VerticalSpace(71.0),
                      ],
                    ),
                  ),
                  //the bottom widget
                  BottomWidget(
                    list: [
                      cubit.catigoriesColumn1,
                      cubit.catigoriesColumn2,
                      cubit.catigoriesColumn3,
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
