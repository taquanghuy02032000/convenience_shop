import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonCommon extends StatelessWidget {
  const ButtonCommon({
    Key? key,
    required this.titleButton,
    required this.onPress,
  }) : super(key: key);
  final String titleButton;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
        child: Text(
          titleButton,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
