import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/widgets/custom_elevated_button.dart';
import 'package:clan_app/modules/search_screen/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilterWidget2 extends StatelessWidget {
  const FilterWidget2(
      {super.key,
      required this.selectedButton2,
      required this.index,
      required this.text});

  final int selectedButton2, index;
  final String text;
  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {
        //to change the selected filter button
        BlocProvider.of<SearchCubit>(context).changeSelectedButton2(index);
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: selectedButton2 == index?AppColors.onSecondary:Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
              side: BorderSide(
                //to change border color and stock
                  color: selectedButton2 == index
                      ? AppColors.tertiary.withOpacity(0.22)
                      : AppColors.secondary.withOpacity(0.12),
                  width: selectedButton2 == index ? 1 : 0.5))),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 12.0,
          color: selectedButton2 == index ? AppColors.black : Colors.black,
        ),
      ),
    );
  }
}
