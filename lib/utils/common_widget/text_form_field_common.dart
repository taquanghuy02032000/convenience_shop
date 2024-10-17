import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget textFormFieldCommon({
  double height = 50.0,
  Color color = Colors.white,
  double borderRadius = 15.0,
  required var controller,
  required String label,
  required bool isPassword,
  ValueChanged? onSubmit,
  FormFieldValidator? validate,
  bool labelIsOn = false,
  IconData? suffixIcon,
  Function()? suffixPressed,
}) =>
    Container(
      height: height.h,
      padding: EdgeInsetsDirectional.only(
        start: 10.0.w,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          borderRadius.r,
        ),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: isPassword,
        onFieldSubmitted: onSubmit,
        validator: validate,
        decoration: InputDecoration(
          labelText: label,
          suffixIcon: suffixIcon != null
              ? IconButton(
                  highlightColor: const Color(0xffe3c099),
                  onPressed: suffixPressed,
                  icon: Icon(
                    suffixIcon,
                  ),
                )
              : null,
          floatingLabelBehavior:
              labelIsOn ? FloatingLabelBehavior.auto : FloatingLabelBehavior.never,
          border: InputBorder.none,
        ),
      ),
    );
