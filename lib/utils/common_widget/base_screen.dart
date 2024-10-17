import 'package:flutter/material.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({
    Key? key,
    required this.contentWidget,
    this.titleAppBarWidget,
    this.actionWidgets,
  }) : super(key: key);
  final Widget contentWidget;
  final Widget? titleAppBarWidget;
  final List<Widget>? actionWidgets;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: titleAppBarWidget,
        actions: actionWidgets,
      ),
      body: SafeArea(
        child: contentWidget,
      ),
    );
  }
}
