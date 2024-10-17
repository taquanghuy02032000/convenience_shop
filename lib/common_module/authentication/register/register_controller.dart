import 'package:convinient_shop/config/routes/routes.dart';
import 'package:convinient_shop/utils/common_text_value/common_text_value.dart';
import 'package:convinient_shop/utils/firebase/firebase_authen/firebase_auth_common.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  RxBool isLoading = false.obs;

  Future<void> register({
    required String email,
    required String password,
    required String addressShipping,
    required String nameUser,
  }) async {
    isLoading.value = true;
    final String errorResult = await FirebaseAuthCommon.createUserWithEmailPassword(
      email: email,
      password: password,
      address: addressShipping,
      name: nameUser,
    );
    isLoading.value = false;
    if (errorResult.isNotEmpty) {
      Get.showSnackbar(
        GetSnackBar(
          title: ValueCommon.error,
          message: errorResult,
        ),
      );
    } else {
      Get.showSnackbar(
        GetSnackBar(
          title: ValueCommon.success,
          message: ValueCommon.createUserSuccess,
        ),
      );
      Get.to(AppRouterName.home);
    }
  }
}
