// ignore_for_file: must_be_immutable

import 'package:campuspay/core/helpers/app_images.dart';
import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/theme/styles.dart';
import 'package:campuspay/features/home/logic/cubit/home_cubit.dart';
import 'package:campuspay/features/home/logic/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServicesInHomeScreen extends StatelessWidget {
  ServicesInHomeScreen({
    super.key,
  });
  bool isCached = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            ContainerIconService(
              image: Assets.imagesPaybill,
              onTap: () {},
            ),
            verticalSpace(16),
            Text(
              'Pay Bill',
              textAlign: TextAlign.center,
              style: TextStyles.font14DarkGrayMedium,
            ),
          ],
        ),
        Column(
          children: [
            ContainerIconService(
              image: Assets.imagesTransfer,
              onTap: () {},
            ),
            verticalSpace(16),
            Text(
              'Transfer',
              textAlign: TextAlign.center,
              style: TextStyles.font14DarkGrayMedium,
            ),
          ],
        ),
        Column(
          children: [
            ContainerIconService(
              image: Assets.imagesIconmyCache,
              onTap: () {},
            ),
            verticalSpace(16),
            Text(
              'Top Up',
              textAlign: TextAlign.center,
              style: TextStyles.font14DarkGrayMedium,
            ),
          ],
        ),
        Column(
          children: [
            BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                return ContainerIconService(
                  image: Assets.imagesIconmyCache,
                  onTap: () {
                    HomeCubit.get(context).emitMyCacheState();
                  },
                );
              },
            ),
            verticalSpace(16),
            Text(
              'My Cache',
              textAlign: TextAlign.center,
              style: TextStyles.font14DarkGrayMedium,
            ),
          ],
        ),
      ],
    );
  }
}

class ContainerIconService extends StatelessWidget {
  const ContainerIconService({
    super.key,
    required this.image,
    this.height,
    this.width,
    required this.onTap,
  });

  final String image;
  final double? height, width;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? 64.w,
        height: height ?? 64.h,
        decoration: ShapeDecoration(
          color: const Color(0xFFEFF5FF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
        ),
        child: Image.asset(image),
      ),
    );
  }
}
