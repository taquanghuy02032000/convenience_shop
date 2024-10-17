import 'package:convinient_shop/config/images/images_util.dart';
import 'package:convinient_shop/utils/common_widget/base_screen.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      contentWidget: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageUtils.imageBGAuthentication),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
