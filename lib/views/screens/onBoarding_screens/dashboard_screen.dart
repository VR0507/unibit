import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:unibit/controllers/onboarding_controllers/dashboard_controller.dart';
import 'package:unibit/res/color.dart';
import 'package:unibit/res/images.dart';
import 'package:unibit/res/sizes.dart';
import 'package:unibit/res/string.dart';
import 'package:unibit/views/widgets/custom_label.dart';
import '../../widgets/custom_button.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({Key? key}) : super(key: key);
  final controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;

    return Scaffold(
      body: GetBuilder<DashboardController>(
        builder: (controller) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 100,
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: AppSizes.pagePadding,
                      right: AppSizes.pagePadding,
                      top: AppSizes.pagePadding,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(AppImages.topBar),
                        SvgPicture.asset(AppImages.notification),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: CustomLabel(
                          text: "Hello, ${controller.name} 👋",
                          size: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        child: Image.asset(
                          controller.adsBanner,
                          width: width,
                          fit: BoxFit.fill,
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: controller.list.length,
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: const EdgeInsets.only(top: 5),
                            padding:
                                const EdgeInsets.all(AppSizes.smallSpace),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(AppSizes.cornerRadius15),
                              color: AppColors.whiteColor,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(AppSizes.cornerRadius15),
                                  child: Image.asset(
                                    controller.list[index].image,
                                    fit: BoxFit.fitWidth,
                                    width: double.infinity,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                    vertical: AppSizes.maxSpace,
                                  ),
                                  child: CustomLabel(
                                    text: controller.list[index].title,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    size: 18,
                                  ),
                                ),
                                SizedBox(
                                  height: 100,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          downloadCount(
                                            controller
                                                .list[index].countImage1,
                                            controller
                                                .list[index].countImage2,
                                            controller
                                                .list[index].countImage3,
                                          ),
                                          Container(
                                            height: 70,
                                            width: 100,
                                            margin: const EdgeInsets.only(left: 20),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                CustomLabel(
                                                  text:
                                                      '${controller.list[index].count}+',
                                                  size: 15,
                                                  color: AppColors.blackColor,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                const CustomLabel(
                                                  text: AppStrings.players,
                                                  size: 15,
                                                  color: AppColors.blackColor,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 130,
                                        child: CustomButton(
                                          text: AppStrings.playNow,
                                          color: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              AppColors.yellowColor,
                                              AppColors.darkOrangeColor,
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  downloadCount(
    String image1,
    String image2,
    String image3,
  ) {
    return SizedBox(
      width: 70,
      height: 70,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: CircleAvatar(
              backgroundImage: AssetImage(image1),
              radius: 15,
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            top: 0,
            child: CircleAvatar(
              backgroundImage: AssetImage(image2),
              radius: 15,
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: CircleAvatar(
              backgroundImage: AssetImage(image3),
              radius: 15,
            ),
          ),
        ],
      ),
    );
  }
}
