import 'package:cash_tracker/src/config/spacing.dart';
import 'package:cash_tracker/src/config/themes.dart';
import 'package:cash_tracker/src/utils/date_n_time.dart';
import 'package:cash_tracker/src/widgets/cash_flow_icon.dart';
import 'package:cash_tracker/src/widgets/category_percentage.dart';
import 'package:cash_tracker/src/widgets/drawer.dart';
import 'package:cash_tracker/src/widgets/expense_record.dart';
import 'package:cash_tracker/src/widgets/tiles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final spacing = ConfigSpacing();

  @override
  Widget build(BuildContext context) {
    var dateHelper = DateTimeUtility();

    body() {
      return ListView(
        children: [
          // Today
          AppTileWithTitle(
            title: 'Today',
            child: Row(
              children: [
                // Total Expense
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Text(
                    '₹ ' + '140',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                // Categories
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Column(
                    children: [
                      CategoryWithPercentage(color: colors.color1, category: 'Food', percentage: 34.25),
                      CategoryWithPercentage(color: colors.color2, category: 'Entertainment', percentage: 34.25),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Month
          AppTileWithTitle(
            title: "${dateHelper.toMonth(DateTime.now().month)}, ${DateTime.now().year}",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CashFlowIcon(label: '15000', icon: Icons.arrow_circle_down, onPressed: () {},),
                CashFlowIcon(label: '10000', icon: Icons.arrow_circle_up, onPressed: () {},),
                CashFlowIcon(label: '5000', icon: Icons.attach_money_outlined, onPressed: () {},),
              ],
            ),
          ),

          // Expense
          AppTileWithTitle(
            title: 'Expenses',
            child: Column(
              children: [
                ExpenseRecord(dateTime: DateTime.now(), credit: 100, debit: 100),
                ExpenseRecord(dateTime: DateTime.now(), debit: 20),
              ],
            ),
          ),
        ],
      );
    }

    return SafeArea(
      child: Scaffold(
        drawer: AppDrawer(),
        appBar: AppBar(
          title: Text('CashTracker'),
        ),
        body: body(),
      ),
    );
  }
}
