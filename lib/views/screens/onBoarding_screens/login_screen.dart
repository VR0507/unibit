import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:unibit/res/color.dart';
import 'package:unibit/res/images.dart';
import 'package:unibit/res/sizes.dart';
import 'package:unibit/res/string.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_label.dart';
import '../../widgets/custom_textField.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * 0.4,
              width: width,
              alignment: Alignment.center,
              child: SvgPicture.asset(AppImages.appLogo),
            ),
            Container(
              height: height * 0.6,
              width: width,
              padding: const EdgeInsets.all(AppSizes.pagePadding),
              decoration: const BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppSizes.cornerRadius15),
                  topRight: Radius.circular(AppSizes.cornerRadius15),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomLabel(
                    text: AppStrings.login,
                    size: 24,
                    fontWeight: FontWeight.w600,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    height: 50,
                    obsecureText: false,
                    maxLines: 1,
                    minLines: 1,
                    hintText: AppStrings.mobileNumber,
                    keyboardType: TextInputType.number,
                    prefixIcon: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 16,
                      ),
                      child: SvgPicture.asset(
                        AppImages.callIcon,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    height: 50,
                    obsecureText: true,
                    maxLines: 1,
                    minLines: 1,
                    hintText: AppStrings.password,
                    prefixIcon: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 16,
                      ),
                      child: SvgPicture.asset(
                        AppImages.lockIcon,
                        height: 16,
                        width: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: FractionalOffset.topRight,
                    child: CustomLabel(
                      text: AppStrings.forgotPassword,
                      size: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.orangeColor,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    text: AppStrings.login,
                    onTap: () => Get.to(const HomeScreen()),
                    color: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.yellowColor,
                        AppColors.darkOrangeColor,
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const CustomButton(
                    text: AppStrings.loginOtp,
                    color: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.blueColor,
                        AppColors.lightBlueColor,
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomLabel(
                        text: AppStrings.notHaveAccount,
                        fontWeight: FontWeight.w500,
                        size: 12,
                      ),
                      CustomLabel(
                        text: AppStrings.signUpNow,
                        fontWeight: FontWeight.w500,
                        size: 12,
                        color: AppColors.orangeColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
