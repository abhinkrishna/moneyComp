import 'package:cash_tracker/src/config/spacing.dart';
import 'package:flutter/material.dart';


class AppTile extends StatelessWidget {

  final Widget child;
  AppTile({
    required this.child
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Theme.of(context).highlightColor,
        borderRadius: BorderRadius.all(Radius.circular(7.5))
      ),
      child: child,
    );
  }
}



class AppTileWithTitle extends StatelessWidget {

  final Widget child;
  final String title;
  final EdgeInsets? padding;
  AppTileWithTitle({
    required this.child,
    this.padding,
    this.title = 'nil',
  });

  final spacing = ConfigSpacing();

  @override
  Widget build(BuildContext context) {

    EdgeInsets reservedPadding = padding ?? spacing.mainTile;

    return Padding(
      padding: reservedPadding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(title, style: Theme.of(context).textTheme.headline6, textAlign: TextAlign.start),
          SizedBox(height: 10),
          AppTile(child: child),

        ],
      ),
    );
  }
}
