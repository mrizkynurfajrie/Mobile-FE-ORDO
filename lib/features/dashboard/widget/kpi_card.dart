import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mobile_fe_ordo/shared/constants/colors.dart';
import 'package:mobile_fe_ordo/shared/constants/styles.dart';

class KPICard extends StatelessWidget {
  final String icon;
  final String itemTitle;
  final String item;
  final String result;
  final TextStyle resultStyle;

  const KPICard({
    super.key,
    required this.icon,
    required this.itemTitle,
    required this.item,
    required this.result,
    required this.resultStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.w,
      margin: EdgeInsets.only(right: 10.w),
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.w),
          color: AppColor.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF7864E6).withOpacity(0.12),
              blurRadius: 19,
              spreadRadius: 0,
              offset: const Offset(0, 9),
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 9.0),
                child: SvgPicture.asset(
                  icon,
                  fit: BoxFit.fill,
                ),
              ),
              horizontalSpace(5.w),
              Text(
                itemTitle,
                style: TextStyles.textVerySmallRegular.copyWith(
                  color: AppColor.black,
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
          Text(
            item,
            style: TextStyles.poppins.copyWith(
              fontSize: FontSizes.s27,
              color: const Color(0xFF181411),
              fontWeight: FontWeight.w600,
              letterSpacing: -0.7,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Last month',
                style: TextStyles.textExtraSmall.copyWith(
                  color: AppColor.gray2,
                ),
              ),
              Text(
                result,
                style: resultStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
