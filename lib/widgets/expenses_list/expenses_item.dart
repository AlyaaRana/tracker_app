import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tracker_app/models/expense.dart';

class ExpensesItem extends StatelessWidget{
  const ExpensesItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    final rupiahFormat = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp', decimalDigits: 0);
    return Card(
      child: Padding (
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                expense.title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height:4 ),
            Row(
              children: [
                Text(rupiahFormat.format(expense.amount)),
                const Spacer(),
                Row(
                  children: [
                     Icon(categoryIcons[expense.category]),
                    const SizedBox(width: 8),
                    Text(expense.formattedDate)
                  ],
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}