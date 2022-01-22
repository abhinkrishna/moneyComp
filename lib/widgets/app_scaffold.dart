import 'package:cash_tracker/styles/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppScaffold extends GetView {
  final Widget child;
  final Color? color;
  final AppBar? appBar;
  AppScaffold({
    required this.child,
    this.color,
    this.appBar,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? AppTheme.appTheme,
      child: SafeArea(
        child: Scaffold(
          appBar: appBar,
          body: child,
        ),
      ),
    );
  }
}
