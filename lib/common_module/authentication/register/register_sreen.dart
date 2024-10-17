import 'package:convinient_shop/common_module/authentication/register/register_controller.dart';
import 'package:convinient_shop/config/images/images_util.dart';
import 'package:convinient_shop/utils/common_widget/text_form_field_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late TextEditingController _emailRegisterController;
  late TextEditingController _passwordRegisterController;
  late TextEditingController _addressRegisterController;
  late TextEditingController _nameRegisterController;
  late RegisterController _registerController;

  @override
  void initState() {
    super.initState();
    _emailRegisterController = TextEditingController();
    _passwordRegisterController = TextEditingController();
    _addressRegisterController = TextEditingController();
    _nameRegisterController = TextEditingController();
    _registerController = Get.find<RegisterController>();
  }

  @override
  Widget build(BuildContext context) {
    ever(
      _registerController.isLoading,
      (_) => {
        print('_registerController ${_registerController.isLoading.value}'),
        if (_registerController.isLoading.value)
          {context.loaderOverlay.show()}
        else
          {context.loaderOverlay.hide()},
      },
    );
    context.loaderOverlay.show();

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
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
                  'Sign Up',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                textFormFieldCommon(
                  controller: _emailRegisterController,
                  label: 'Enter your email',
                  isPassword: false,
                ),
                textFormFieldCommon(
                  controller: _passwordRegisterController,
                  label: 'Enter your password',
                  isPassword: true,
                ),
                textFormFieldCommon(
                  controller: _nameRegisterController,
                  label: 'Enter your name',
                  isPassword: false,
                ),
                ElevatedButton(
                  onPressed: () {
                    _registerController.register(
                      email: _emailRegisterController.text,
                      password: _passwordRegisterController.text,
                      addressShipping: _addressRegisterController.text,
                      nameUser: _nameRegisterController.text,
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 10.h,
                    ),
                    child: Text(
                      'Sign Up',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
