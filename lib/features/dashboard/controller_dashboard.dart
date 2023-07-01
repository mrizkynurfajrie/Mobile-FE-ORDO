import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mobile_fe_ordo/features/dashboard/widget/line_chart.dart';
import 'package:mobile_fe_ordo/shared/constants/assets.dart';
import 'package:mobile_fe_ordo/shared/constants/colors.dart';
import 'package:mobile_fe_ordo/shared/constants/styles.dart';

class ControllerDashboard extends GetxController {
  CarouselController carouselController = CarouselController();
  var currentSlide = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit

    super.onInit();
  }
}

class KPI {
  final String icon;
  final String itemTitle;
  final String title;
  final String result;
  final TextStyle resultStyle;

  KPI({
    required this.icon,
    required this.itemTitle,
    required this.title,
    required this.result,
    required this.resultStyle,
  });
}
