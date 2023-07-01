import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mobile_fe_ordo/shared/constants/assets.dart';
import 'package:mobile_fe_ordo/shared/constants/colors.dart';
import 'package:mobile_fe_ordo/shared/constants/styles.dart';
import 'package:mobile_fe_ordo/shared/widgets/menu_item_image.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar(
      {Key? key, required this.selectedIndex, required this.onTap})
      : super(key: key);

  final Function(int index) onTap;
  final int selectedIndex;

  Widget _itemMenu(
    BuildContext context, {
    required Function() onTap,
    required String label,
    required bool isSelected,
    required String iconPrimary,
  }) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 24.w,
            height: 24.w,
            child: MenuItemImage(
              primaryIcon: iconPrimary,
            ),
          ),
          verticalSpace(4.h),
          Text(
            label,
            style: isSelected
                ? TextStyles.textSmallMedium
                : TextStyles.textSmallRegular,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 93.h,
      padding: EdgeInsets.fromLTRB(14.w, 0.h, 14.w, 0.h),
      decoration: BoxDecoration(
        color: AppColor.darkPurple,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.w),
          topRight: Radius.circular(20.w),
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFB29C9C).withOpacity(0.25),
            spreadRadius: 11,
            blurRadius: 24,
            offset: const Offset(0, 15),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _itemMenu(
            context,
            onTap: () {
              onTap(0);
            },
            label: 'Home'.tr,
            isSelected: selectedIndex == 0,
            iconPrimary:
                selectedIndex == 0 ? AppIcons.boldHome : AppIcons.outlineHome,
          ),
          _itemMenu(
            context,
            onTap: () {
              onTap(1);
            },
            label: 'Lead'.tr,
            isSelected: selectedIndex == 1,
            iconPrimary:
                selectedIndex == 1 ? AppIcons.boldLead : AppIcons.outlineLead,
          ),
          _itemMenu(
            context,
            onTap: () {
              onTap(2);
            },
            label: 'Commission'.tr,
            isSelected: selectedIndex == 2,
            iconPrimary: selectedIndex == 2
                ? AppIcons.boldCommission
                : AppIcons.outlineCommission,
          ),
          _itemMenu(
            context,
            onTap: () {
              onTap(3);
            },
            label: 'Profile'.tr,
            isSelected: selectedIndex == 3,
            iconPrimary: selectedIndex == 3
                ? AppIcons.boldProfile
                : AppIcons.outlineProfile,
          ),
        ],
      ),
    );
  }
}
