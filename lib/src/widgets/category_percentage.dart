import 'package:flutter/material.dart';

class CategoryWithPercentage extends StatelessWidget {

  final Color color;
  final double percentage;
  final String category;
  CategoryWithPercentage({
    required this.category,
    required this.color,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar( radius: 5, backgroundColor: color ),
              SizedBox(width: 5),
              Text(category, textAlign: TextAlign.start),
            ],
          ),
          Text(percentage.toString() + ' %')
        ],
      ),
    );
  }
}
