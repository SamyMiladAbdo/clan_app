import 'package:clan_app/core/constants/color.dart';
import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled({
    super.key,
    required this.controller,
    required this.label,
    required this.keyboardType,
    required this.validator,
  });

  final TextEditingController controller;
  final String label;
  final TextInputType keyboardType;
  final String validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.start,
      controller: controller,
      validator: (value) {
        return validator;
      },
      keyboardType: keyboardType,
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 15.0,
        color: Color(0xFF16002B),
      ),
      decoration: InputDecoration(
        // filled: true,
        // fillColor: Colors.white,
        label: Padding(
          padding: const EdgeInsetsDirectional.only(start: 21.0),
          child: Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12.0,
              color: AppColors.black,
            ),
          ),
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: const Color(0xFF16002B).withOpacity(0.25),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: AppColors.tertiary,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: AppColors.tertiary,
          ),
        ),
      ),
    );
  }
}
