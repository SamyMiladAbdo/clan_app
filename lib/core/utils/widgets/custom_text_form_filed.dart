import 'package:clan_app/core/constants/color.dart';
import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:clan_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    this.label = "",
    this.hint = "",
    required this.keyboardType,
    this.validator,
    this.suffixIcon,
    this.prefixIcon,
    this.obscureText = false,
    this.inputFormatters = const [],
    this.onChanged,
    this.textAlign,
    this.maxLines,
    this.onTap,
    this.suffixIconOnPressed,
  });

  final TextEditingController controller;
  final String? label;
  final String? hint;
  final TextInputType keyboardType;
  final String? validator;
  final Widget? suffixIcon;
  final void Function()? suffixIconOnPressed;
  final Widget? prefixIcon;
  final bool? obscureText;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final TextAlign? textAlign;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: textAlign ?? TextAlign.start,
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return validator ?? S.of(context).validate;
        }
        return null;
      },
      maxLines: maxLines ?? 1,
      obscureText: obscureText!,
      keyboardType: keyboardType,
      onTap: onTap ?? () {},
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 15.0,
        color: Color(0xFF16002B),
      ),
      inputFormatters: inputFormatters!,
      onChanged: onChanged ?? (value) {},
      decoration: InputDecoration(
        contentPadding: EdgeInsetsDirectional.only(
          start: VerticalSpace.padding(21.0),
          top: VerticalSpace.padding(19.0),
          bottom: VerticalSpace.padding(17.0),
        ),
        suffixIcon: InkWell(
          onTap: suffixIconOnPressed ?? () {},
          child: Padding(
            padding: const EdgeInsetsDirectional.only(end: 10.22),
            child: suffixIcon ?? const SizedBox(),
          ),
        ),
        prefixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(start: 21.0, end: 8.78),
          child: prefixIcon ?? const SizedBox(),
        ),
        prefixIconConstraints:
            const BoxConstraints(maxHeight: 20.0, maxWidth: 42.0),
        suffixIconConstraints: BoxConstraints(
          maxHeight: 30.0,
          maxWidth: 30.0,
        ),
        // suffixIconConstraints: BoxConstraints(
        //   maxHeight: 20.0,
        //   maxWidth: 21.0,
        // ),
        // filled: true,
        // fillColor: Colors.white,

        label: Padding(
          padding:
              EdgeInsetsDirectional.only(start: VerticalSpace.padding(21.0)),
          child: Text(
            label!,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15.0,
              color: AppColors.gray,
            ),
          ),
        ),

        hintText: hint!,
        hintStyle: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 10.0,
          color: Color(0xFFB7B7B7),
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
          borderSide: BorderSide(
            color: const Color(0xFF16002B).withOpacity(0.25),
          ),
        ),
      ),
    );
  }
}
