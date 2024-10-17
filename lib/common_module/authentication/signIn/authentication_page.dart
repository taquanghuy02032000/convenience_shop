import 'package:convinient_shop/common_module/authentication/signIn/authentication_controller.dart';
import 'package:convinient_shop/config/images/images_util.dart';
import 'package:convinient_shop/config/routes/routes.dart';
import 'package:convinient_shop/utils/common_widget/common_button.dart';
import 'package:convinient_shop/utils/common_widget/text_form_field_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  late TextEditingController _accountController;
  late TextEditingController _passwordController;
  late AuthenticationController _authenticationController;

  @override
  void initState() {
    super.initState();
    _accountController = TextEditingController();
    _passwordController = TextEditingController();
    _authenticationController = Get.find<AuthenticationController>();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              ImageUtils.imageBGAuthentication,
              width: double.infinity,
              height: 374.h,
              fit: BoxFit.cover,
            ),
            Column(
              children: [
                Text(
                  'Sign In',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                textFormFieldCommon(
                  controller: _accountController,
                  label: 'Enter your email',
                  isPassword: false,
                ),
                textFormFieldCommon(
                  controller: _passwordController,
                  label: 'Enter your password',
                  isPassword: true,
                ),
                ButtonCommon(
                  titleButton: 'Sign Up',
                  onPress: () {
                    Get.toNamed(AppRouterName.register);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
