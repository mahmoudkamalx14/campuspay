import 'package:campuspay/features/home/ui/widgets/build_item_recent_transactions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RecentTransactionsList extends StatelessWidget {
  const RecentTransactionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
      child: Column(
        children: [
          const Row(
            children: [
              Expanded(
                child: Text(
                  'Recent Transactions',
                  style: TextStyle(
                    color: Color(0xFF111827),
                    fontSize: 18,
                    fontFamily: 'Alexandria',
                    fontWeight: FontWeight.w700,
                    height: 0.08,
                    letterSpacing: 0.30,
                  ),
                ),
              ),
            ],
          ),
          BuildItemRecentTransactions(),
        ],
      ),
    );
  }
}
