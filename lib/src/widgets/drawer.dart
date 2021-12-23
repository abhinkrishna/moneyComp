import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(

        children: [

          // Heading
          DrawerHeader(
            child: Text('Preferences'),
            decoration: BoxDecoration(
              color: Theme.of(context).highlightColor
            ),
          ),

        ],
      ),

    );
  }
}
