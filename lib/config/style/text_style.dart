import 'package:convinient_shop/config/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyleApp {
  static TextStyle textStyleApp({
    Color? color,
    double? fontSize,
  }) {
    return GoogleFonts.girassol(
      fontSize: fontSize ?? 14.sp,
      color: color ?? AppColor.blackBoldColorApp,
    );
  }
}
