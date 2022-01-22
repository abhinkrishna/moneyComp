import 'package:cash_tracker/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainView extends GetView {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(title: Text('Money Manager'),),
      child: Text('Hey'),
    );
  }
}
