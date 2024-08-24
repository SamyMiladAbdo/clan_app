import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/constants/constants.dart';
import 'package:clan_app/core/utils/widgets/custom_elevated_button.dart';
import 'package:clan_app/modules/search_screen/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilterWidget1 extends StatelessWidget {
  const FilterWidget1(
      {super.key,
      required this.selectedButton1,
      required this.index,
      required this.text});

  final int selectedButton1, index;
  final String text;
  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {
        //to change the selected filter button
        BlocProvider.of<SearchCubit>(context).changeSelectedButton1(index);
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
              side: BorderSide(
                  //to change border color and stock
                  color: selectedButton1 == index
                      ? AppColors.tertiary
                      : AppColors.secondary.withOpacity(0.12),
                  width: selectedButton1 == index ? 2 : 0.5))),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 12.0,
          color: selectedButton1 == index ? AppColors.tertiary : Colors.black,
        ),
      ),
    );
  }
}
