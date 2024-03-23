// ignore_for_file: must_be_immutable

import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildItemRecentTransactions extends StatelessWidget {
  BuildItemRecentTransactions({
    super.key,
  });

  List<RecentTransactionsModel> model = recentTransactionslist;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220.h,
      width: double.infinity,
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: model.length,
        separatorBuilder: (context, index) => Container(
          height: 1,
          color: const Color(0xFFF2F2F2),
        ),
        itemBuilder: (context, index) => ListTile(
          leading: Container(
            width: 48,
            height: 48,
            decoration: ShapeDecoration(
              color: const Color(0xFFEFF5FF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
            ),
            child: Image.asset(model[index].image),
          ),
          title: FittedBox(
              child: Text(model[index].name,
                  style: TextStyles.font16Color827Medium)),
          subtitle: Row(
            children: [
              FittedBox(
                child: Text(
                  model[index].time,
                  style: TextStyles.font12Color3AFRegular,
                ),
              ),
              horizontalSpace(10),
              Text(
                model[index].date,
                style: TextStyles.font12Color3AFRegular,
              )
            ],
          ),
          trailing: Text(
            model[index].price,
            textAlign: TextAlign.right,
            style: TextStyles.font16Color827Medium,
          ),
        ),
      ),
    );
  }
}

class RecentTransactionsModel {
  final String name;
  final String image;
  final String price;
  final String date;
  final String time;

  RecentTransactionsModel({
    required this.name,
    required this.image,
    required this.price,
    required this.date,
    required this.time,
  });
}

List<RecentTransactionsModel> recentTransactionslist = [
  RecentTransactionsModel(
    name: 'University expenses',
    image: 'assets/images/University.png',
    price: '-3150 L.E',
    date: 'Oct 10, 2024',
    time: '12:32 PM',
  ),
  RecentTransactionsModel(
    name: 'University expenses',
    image: 'assets/images/University.png',
    price: '-3150 L.E',
    date: 'Oct 10, 2024',
    time: '12:32 PM',
  ),
  RecentTransactionsModel(
    name: 'University expenses',
    image: 'assets/images/University.png',
    price: '-3150 L.E',
    date: 'Oct 10, 2024',
    time: '12:32 PM',
  ),
];
