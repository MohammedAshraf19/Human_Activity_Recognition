import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/core/utils/styles.dart';
import 'package:graduation_project/core/widgets/custom_icon.dart';

class CustomTextFormFiled extends StatelessWidget {
  final TextInputType type;
  final IconData prefix;
  final String hint;
  final TextEditingController? customController;

  const CustomTextFormFiled({
    super.key,
    required this.hint,
    required this.customController,
    required this.type,
    required this.prefix,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: ColorManager.blackColor,
      validator: (value) {
        if (value!.isEmpty) {
          return "Incorrect $hint";
        }
        return null;
      },
      controller: customController,
      keyboardType: type,
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorManager.greyColorEEEEEE,
        contentPadding: EdgeInsets.symmetric(
          vertical: 20.h,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
          borderSide: const BorderSide(
            color: ColorManager.greyColorD9D9D9,
          ),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
            borderSide: const BorderSide(color: ColorManager.greyColorD9D9D9)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
            borderSide: const BorderSide(color: ColorManager.redColorDC2222)),
        hintText: 'Enter Your $hint',
        hintStyle: Styles.size15_400Grey757474,
        errorStyle: Styles.size14_400RedDC2222,
        prefixIcon: CustomIcon(
          icon: prefix,
        ),
        prefixIconColor: MaterialStateColor.resolveWith((states) =>
            states.contains(MaterialState.focused)
                ? const Color(0xff00B0FF)
                : const Color(0xff757474)),
      ),
    );
  }
}
