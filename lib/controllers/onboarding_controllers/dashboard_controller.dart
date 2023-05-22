import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unibit/res/images.dart';

import '../../models/dashboard_card_list_model.dart';
class DashboardController extends GetxController {
  String name='Dipak';
  String adsBanner=AppImages.topBanner;
  List<DashboardCardListModel> list =[
    DashboardCardListModel(title: 'Play Ludo and Earn Money', count: '500000', image: AppImages.card1, countImage1: AppImages.i1, countImage2: AppImages.i1, countImage3: AppImages.i1),
    DashboardCardListModel(title: 'Play Cricket Fantasy League', count: '500000', image: AppImages.card1, countImage1: AppImages.i2, countImage2: AppImages.i1, countImage3: AppImages.i2),
  ];
}
