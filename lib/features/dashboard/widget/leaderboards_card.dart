import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_fe_ordo/shared/constants/colors.dart';
import 'package:mobile_fe_ordo/shared/constants/styles.dart';

class LeaderboardsCard extends StatelessWidget {
  final String rank;
  final String avatar;
  final String name;
  final String date;
  final String deals;

  const LeaderboardsCard({
    super.key,
    required this.rank,
    required this.avatar,
    required this.name,
    required this.date,
    required this.deals,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340.w,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 14.h),
      color: AppColor.white,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 40.w,
                    child: Text(
                      rank,
                      style: TextStyles.poppins.copyWith(
                        fontSize: FontSizes.s22,
                        color: AppColor.mainPurple,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.4,
                      ),
                    ),
                  ),
                  horizontalSpace(5.w),
                  Image.asset(avatar),
                  horizontalSpace(11.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        name,
                        style: TextStyles.textMedium
                            .copyWith(color: AppColor.black),
                      ),
                      verticalSpace(1.h),
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
              RichText(
                text: TextSpan(
                  text: deals,
                  style: TextStyles.poppins.copyWith(
                    color: AppColor.mainPurple,
                    fontSize: FontSizes.s12,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.3,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Deals',
                      style: TextStyles.poppins.copyWith(
                        color: AppColor.gray2,
                        fontSize: FontSizes.s10,
                        letterSpacing: -0.3,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          verticalSpace(15.h),
          const Divider(
            thickness: 1,
            color: Color(0xFFE7E1EA),
          ),
        ],
      ),
    );
  }
}
