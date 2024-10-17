import 'package:convinient_shop/common_module/authentication/signIn/authentication_page.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:convinient_shop/config/routes/routes.dart';
import 'package:convinient_shop/config/themes/themes_app.dart';
import 'package:convinient_shop/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Future<void> configureApp() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalLoaderOverlay(
      useDefaultLoading: false,
      overlayWidgetBuilder: (_) {
        //ignored progress for the moment
        return const Center(
          child: SpinKitCubeGrid(
            color: Colors.black45,
            size: 50.0,
          ),
        );
      },
      child: ScreenUtilInit(
        designSize: const Size(414, 896),
        minTextAdapt: true,
        ensureScreenSize: true,
        builder: (_, __) {
          return GetMaterialApp(
            title: 'ConvenienceShop',
            theme: ThemesApp.light,
            getPages: AppRouter.router,
            initialRoute: AppRouterName.login,
          );
        },
      ),
    );
  }
}
