import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:unibit/res/color.dart';
import 'package:unibit/res/icons.dart';
import 'package:unibit/views/screens/onBoarding_screens/dashboard_screen.dart';
import 'package:unibit/views/widgets/custom_label.dart';

import '../../../res/images.dart';
import '../../../res/string.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static final _widgetOptions = <Widget>[
    DashboardScreen(),
    const Text(
      'Wallet',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    const Text(
      'Share',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    const Text(
      'Profile',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;

    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        height:
            height * (MediaQuery.of(context).padding.bottom > 10 ? 0.11 : 0.07),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          ),
          child: BottomAppBar(
            color: AppColors.whiteColor,
            shape: const CircularNotchedRectangle(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: width / 2 - 50,
                  height: double.infinity,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            AppImages.contact,
                            height: 24,
                            width: 24,
                          ),
                           const CustomLabel(
                            text: AppStrings.contact,
                            color: AppColors.lightGreyColor,
                            size: 15,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            AppImages.wallet,
                            height: 24,
                            width: 24,
                          ),
                           const CustomLabel(
                            text: AppStrings.wallet,
                            color: AppColors.lightGreyColor,
                            size: 15,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: width / 2 - 50,
                  height: double.infinity,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            AppImages.share,
                            height: 24,
                            width: 24,
                          ),
                          const CustomLabel(
                            text: AppStrings.share,
                            color: AppColors.lightGreyColor,
                            size: 15,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            AppImages.profile,
                            height: 24,
                            width: 24,
                          ),
                          const CustomLabel(
                            text: AppStrings.profile,
                            color: AppColors.lightGreyColor,
                            size: 15,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 2.0),
              blurRadius: 6.0,
            ),
          ],
          gradient: LinearGradient(
            transform: GradientRotation(20),
            colors: [
              AppColors.blueColor,
              AppColors.lightBlueColor,
            ],
          ),
          shape: BoxShape.circle,
        ),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: const Icon(
            AppIcons.addIcon,
            size: 32,
          ),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
