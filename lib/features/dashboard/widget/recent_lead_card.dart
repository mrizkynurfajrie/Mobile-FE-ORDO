import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_fe_ordo/shared/constants/assets.dart';
import 'package:mobile_fe_ordo/shared/constants/colors.dart';
import 'package:mobile_fe_ordo/shared/constants/styles.dart';

class RecentLeadCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String date;
  final String commission;
  final String labels;

  const RecentLeadCard({
    super.key,
    required this.avatar,
    required this.name,
    required this.date,
    required this.commission,
    required this.labels,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340.w,
      margin: EdgeInsets.only(bottom: 8.h),
      padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 9.h),
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF7864E6).withOpacity(0.12),
            blurRadius: 19,
            spreadRadius: 0,
            offset: const Offset(0, -1),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(avatar),
              horizontalSpace(11.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style:
                        TextStyles.textMedium.copyWith(color: AppColor.black),
                  ),
                  verticalSpace(1.h),
                  Row(
                    children: [
                      SvgPicture.asset(
                        AppIcons.calendar,
                        height: 12,
                        width: 12,
                        color: AppColor.gray2,
                      ),
                      horizontalSpace(2.4.w),
                      Text(
                        date,
                        style: TextStyles.textSmallRegular.copyWith(
                          color: AppColor.gray2,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(labels),
              verticalSpace(6.h),
              Text(
                commission,
                style: TextStyles.textMedium.copyWith(
                  color: AppColor.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
