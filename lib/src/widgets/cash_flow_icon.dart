import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CashFlowIcon extends GetView {
  final String label;
  final IconData icon;
  final Function? onPressed;
  CashFlowIcon({
    required this.label,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            if (onPressed != null) onPressed!();
          },
          icon: Icon(icon),
        ),
        Text(
          label,
          style: TextStyle(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
