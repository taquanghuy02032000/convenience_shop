import 'package:convinient_shop/common_module/authentication/register/register_binding.dart';
import 'package:convinient_shop/common_module/authentication/register/register_sreen.dart';
import 'package:convinient_shop/common_module/authentication/signIn/authentication_binding.dart';
import 'package:convinient_shop/common_module/authentication/signIn/authentication_page.dart';
import 'package:convinient_shop/users/pages/home/home_user_screen.dart';
import 'package:get/get.dart';

class AppRouter {
  static final router = [
    GetPage(
      name: AppRouterName.login,
      page: () => const AuthenticationPage(),
      binding: AuthenticationBinding(),
    ),
    GetPage(
      name: AppRouterName.register,
      page: () => const RegisterScreen(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: AppRouterName.home,
      page: () => const HomeUserScreen(),
    ),
  ];
}

class AppRouterName {
  static const login = '/login';
  static const register = '/register';
  static const home = '/home';
}
