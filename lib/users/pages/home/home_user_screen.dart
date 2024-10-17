import 'package:convinient_shop/utils/common_widget/base_screen.dart';
import 'package:flutter/material.dart';

class HomeUserScreen extends StatefulWidget {
  const HomeUserScreen({Key? key}) : super(key: key);

  @override
  State<HomeUserScreen> createState() => _HomeUserScreenState();
}

class _HomeUserScreenState extends State<HomeUserScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      contentWidget: Container(
        color: Colors.white,
      ),
    );
  }
}
