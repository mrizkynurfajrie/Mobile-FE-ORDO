import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mobile_fe_ordo/features/dashboard/controller_dashboard.dart';
import 'package:mobile_fe_ordo/features/dashboard/widget/kpi_card.dart';
import 'package:mobile_fe_ordo/features/dashboard/widget/leaderboards_card.dart';
import 'package:mobile_fe_ordo/features/dashboard/widget/line_chart.dart';
import 'package:mobile_fe_ordo/features/dashboard/widget/recent_lead_card.dart';
import 'package:mobile_fe_ordo/shared/constants/assets.dart';
import 'package:mobile_fe_ordo/shared/constants/colors.dart';
import 'package:mobile_fe_ordo/shared/constants/styles.dart';
import 'package:mobile_fe_ordo/shared/widgets/page_decoration_top.dart';

class PageDashboard extends GetView<ControllerDashboard> {
  const PageDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
      title: '',
      toolbarColor: AppColor.mainPurple,
      backgroundColor: AppColor.mainPurple,
      enableBack: false,
      toolbarElevation: 0,
      padding: EdgeInsets.zero,
      center: SizedBox(
        width: Get.width,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Text(
              'Dashboard',
              style: TextStyles.poppins.copyWith(
                fontSize: FontSizes.s15,
                color: AppColor.white,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.3,
              ),
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Flexible(
                  child: SvgPicture.asset(
                    AppIcons.notification,
                  ),
                ),
                horizontalSpace(10.w),
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.white,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(90),
                      child: Image.asset(
                        AppImages.dashboardAvatar,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //REVENUE-SECTION//
              Padding(
                padding: EdgeInsets.only(left: 30.w, right: 7.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Revenue',
                      style: TextStyles.textRegular,
                    ),
                    PopupMenuButton(
                      icon: SvgPicture.asset(AppIcons.menuCircleVertical),
                      itemBuilder: ((context) {
                        return [
                          PopupMenuItem(
                            child: Text(
                              'Daily',
                              style: TextStyles.textSmallRegular.copyWith(
                                color: AppColor.black,
                              ),
                            ),
                          ),
                          PopupMenuItem(
                            child: Text(
                              'Weekly',
                              style: TextStyles.textSmallRegular.copyWith(
                                color: AppColor.black,
                              ),
                            ),
                          ),
                          PopupMenuItem(
                            child: Text(
                              'Monthly',
                              style: TextStyles.textSmallRegular.copyWith(
                                color: AppColor.black,
                              ),
                            ),
                          ),
                        ];
                      }),
                    ),
                  ],
                ),
              ),
              verticalSpace(2.h),
              Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: Text(
                  'Rp 257.500.000',
                  style: TextStyles.headingSemiBold,
                ),
              ),
              //END OF REVENUE-SECTION//
              verticalSpace(14.h),

              //LINE CHART-SECTION//
              SizedBox(
                width: Get.width,
                height: 200,
                child: CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: 1,
                    initialPage: 0,
                    height: 200,
                    enableInfiniteScroll: false,
                    autoPlay: false,
                  ),
                  carouselController: controller.carouselController,
                  items: const [
                    Chart(),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 4,
                    width: 26,
                    margin: EdgeInsets.symmetric(
                      horizontal: 4.w,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: (Theme.of(context).brightness == Brightness.dark
                          ? AppColor.white.withOpacity(0.25)
                          : AppColor.white),
                    ),
                  ),
                  Container(
                    height: 4,
                    width: 26,
                    margin: EdgeInsets.symmetric(
                      horizontal: 4.w,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: (Theme.of(context).brightness == Brightness.dark
                          ? AppColor.white
                          : AppColor.white.withOpacity(0.25)),
                    ),
                  ),
                  Container(
                    height: 4,
                    width: 26,
                    margin: EdgeInsets.symmetric(
                      horizontal: 4.w,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: (Theme.of(context).brightness == Brightness.dark
                          ? AppColor.white
                          : AppColor.white.withOpacity(0.25)),
                    ),
                  ),
                ],
              ),
              //END OF LINE CHART-SECTION//
              verticalSpace(17.h),

              Container(
                width: Get.width,
                padding: EdgeInsets.symmetric(
                  vertical: 20.h,
                  horizontal: 30.w,
                ),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36),
                      topRight: Radius.circular(36),
                    ),
                    color: AppColor.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //KPI-SECTION//
                    Row(
                      children: [
                        SvgPicture.asset(AppIcons.kpiBar),
                        horizontalSpace(6.w),
                        Text(
                          'Key Performance Indicator',
                          style: TextStyles.textMedium.copyWith(
                            color: AppColor.black,
                          ),
                        ),
                      ],
                    ),
                    verticalSpace(15.h),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          KPICard(
                            icon: AppIcons.totalLead,
                            itemTitle: 'Total Lead',
                            item: '57',
                            result: '+3.5%',
                            resultStyle:
                                TextStyles.textExtraSmallMedium.copyWith(
                              color: AppColor.black,
                            ),
                          ),
                          KPICard(
                            icon: AppIcons.coldLead,
                            itemTitle: 'Cold Lead',
                            item: '28',
                            result: '-1.25%',
                            resultStyle:
                                TextStyles.textExtraSmallMedium.copyWith(
                              color: AppColor.red,
                            ),
                          ),
                          KPICard(
                            icon: AppIcons.totalDeals,
                            itemTitle: 'Total Deals',
                            item: '100',
                            result: '+5.50%',
                            resultStyle:
                                TextStyles.textExtraSmallMedium.copyWith(
                              color: AppColor.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    verticalSpace(15.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 3,
                          width: 44,
                          margin: EdgeInsets.symmetric(
                            horizontal: 4.w,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color:
                                (Theme.of(context).brightness == Brightness.dark
                                    ? const Color(0xFFEFEAEA)
                                    : AppColor.purple),
                          ),
                        ),
                        Container(
                          height: 3,
                          width: 44,
                          margin: EdgeInsets.symmetric(
                            horizontal: 4.w,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color:
                                (Theme.of(context).brightness == Brightness.dark
                                    ? AppColor.purple
                                    : const Color(0xFFEFEAEA)),
                          ),
                        ),
                        Container(
                          height: 3,
                          width: 44,
                          margin: EdgeInsets.symmetric(
                            horizontal: 4.w,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color:
                                (Theme.of(context).brightness == Brightness.dark
                                    ? AppColor.purple
                                    : const Color(0xFFEFEAEA)),
                          ),
                        ),
                      ],
                    ),

                    //END OF KPI-SECTION//

                    verticalSpace(28.h),

                    //RECENT LEAD-SECTION//
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recent Lead',
                          style: TextStyles.textMedium.copyWith(
                            color: AppColor.black,
                          ),
                        ),
                        Container(
                          width: 19.w,
                          height: 19.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: const Color(0xFF7864E6).withOpacity(0.10),
                          ),
                          child: const Icon(
                            CupertinoIcons.forward,
                            color: AppColor.mainPurple,
                            size: 14,
                          ),
                        ),
                      ],
                    ),
                    verticalSpace(28.h),
                    const Column(
                      children: [
                        RecentLeadCard(
                          avatar: AppImages.recentLead1,
                          name: 'Shinta Alexandra',
                          date: '31 January 2023',
                          commission: 'Rp 13.000.000',
                          labels: AppLabels.newLead,
                        ),
                        RecentLeadCard(
                          avatar: AppImages.recentLead2,
                          name: 'Vita Arsalansia',
                          date: '31 January 2023',
                          commission: 'Rp 13.000.000',
                          labels: AppLabels.hotLead,
                        ),
                        RecentLeadCard(
                          avatar: AppImages.recentLead3,
                          name: 'Meriko Yolanda',
                          date: '31 January 2023',
                          commission: 'Rp 13.000.000',
                          labels: AppLabels.coldLead,
                        ),
                      ],
                    ),

                    //END OF RECENT LEAD-SECTION//

                    verticalSpace(41.h),

                    //LEADERBOARS-SECTION//
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Leaderboards',
                          style: TextStyles.textMedium.copyWith(
                            color: AppColor.black,
                          ),
                        ),
                        Container(
                          width: 19.w,
                          height: 19.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: const Color(0xFF7864E6).withOpacity(0.10),
                          ),
                          child: const Icon(
                            CupertinoIcons.forward,
                            color: AppColor.mainPurple,
                            size: 14,
                          ),
                        ),
                      ],
                    ),
                    verticalSpace(30.h),
                    const Column(
                      children: [
                        LeaderboardsCard(
                          rank: '1',
                          avatar: AppImages.leaderboard1,
                          name: 'Shinta Alexandra',
                          date: '31 January 2023',
                          deals: '45',
                        ),
                        LeaderboardsCard(
                          rank: '2',
                          avatar: AppImages.leaderboard2,
                          name: 'Jhonatan Zegwin',
                          date: '23 January 2023',
                          deals: '41',
                        ),
                        LeaderboardsCard(
                          rank: '3',
                          avatar: AppImages.leaderboard3,
                          name: 'Vita Arsalansia',
                          date: '15 January 2023',
                          deals: '34',
                        ),
                        LeaderboardsCard(
                          rank: '4',
                          avatar: AppImages.leaderboard4,
                          name: 'Meriko Yolanda',
                          date: '17 January 2023',
                          deals: '30',
                        ),
                        LeaderboardsCard(
                          rank: '5',
                          avatar: AppImages.leaderboard5,
                          name: 'Higuain Morelan',
                          date: '22 January 2023',
                          deals: '25',
                        ),
                      ],
                    ),
                    //END OF LEADERBOARD-SECTION//
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
