import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/widgets/custom_divider.dart';
import 'package:clan_app/core/utils/widgets/custom_elevated_button.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//states
abstract class BottomSheetStates {}

class BottomSheetInitialState extends BottomSheetStates {}

class ChangeRadioValue1State extends BottomSheetStates {}

class ChangeRadioValue2State extends BottomSheetStates {}

//cubit

class BottomSheetCubit extends Cubit<BottomSheetStates> {
  BottomSheetCubit() : super(BottomSheetInitialState());
  static BottomSheetCubit get(context) => BlocProvider.of(context);

  String value1 = "ذكر";
  List items1 = ["ذكر", "أنثى"];

  void changeRadioValue1(String newValue) {
    value1 = newValue;
    emit(ChangeRadioValue1State());
  }

  String value2 = "مطاعم";
  List items2 = ["مطاعم", "فاكهة"];

  void changeRadioValue2(String newValue) {
    value1 = newValue;
    emit(ChangeRadioValue2State());
  }
}

class CompleteYourProfileBottomSheet extends StatelessWidget {
  const CompleteYourProfileBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => BottomSheetCubit(),
      child: BlocConsumer<BottomSheetCubit, BottomSheetStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = BottomSheetCubit.get(context);
          return Padding(
            padding: EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: 48.0),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "أكمل ملفك الشخصي",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 22.0,
                      color: AppColors.black2,
                    ),
                  ),
                  const VerticalSpace(14.0),
                  const Text(
                    "تساعدنا معلوماتك الصحيحة في التواصل الصحيح معك...",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 19.0,
                      color: AppColors.black2,
                    ),
                  ),
                  const VerticalSpace(25.0),
                  const Text(
                    "الجنس:",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.0,
                      color: AppColors.black2,
                    ),
                  ),
                  //radio buttons
                  Row(
                    children: [
                      Radio(
                        activeColor: AppColors.tertiary,
                        value: cubit.items1[0],
                        groupValue: cubit.value1,
                        onChanged: (value) {
                          cubit.changeRadioValue1(value);
                        },
                      ),
                      const Text(
                        "ذكر",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                          color: AppColors.black,
                        ),
                      ),
                      const HorizintalSpace(83.0),
                      Radio(
                        activeColor: AppColors.tertiary,
                        value: cubit.items1[1],
                        groupValue: cubit.value1,
                        onChanged: (value) {
                          cubit.changeRadioValue1(value);
                        },
                      ),
                      const Text(
                        "أنثى",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 27.0, bottom: 25.0),
                    child: CustomDivider1(),
                  ),
                  const Text(
                    "الطلبات المفضلة",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.0,
                      color: AppColors.black2,
                    ),
                  ),
                  //radio buttons
                  Row(
                    children: [
                      Radio(
                        activeColor: AppColors.tertiary,
                        value: cubit.items2[0],
                        groupValue: cubit.value2,
                        onChanged: (value) {
                          cubit.changeRadioValue2(value);
                        },
                      ),
                      const Text(
                        "مطاعم",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                          color: AppColors.black,
                        ),
                      ),
                      const HorizintalSpace(83.0),
                      Radio(
                        activeColor: AppColors.tertiary,
                        value: cubit.items2[1],
                        groupValue: cubit.value2,
                        onChanged: (value) {
                          cubit.changeRadioValue2(value);
                        },
                      ),
                      const Text(
                        "فاكهة",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                  const VerticalSpace(63.0),
                  SizedBox(
                    width: double.infinity,
                    child: CustomElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      backgroundColor: AppColors.onSecondary,
                      child: const Text(
                        "تأكيد",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.0,
                          color: AppColors.black,
                        ),
                      ),
                    ),
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
