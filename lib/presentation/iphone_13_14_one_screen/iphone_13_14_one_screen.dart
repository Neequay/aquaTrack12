import 'package:aquatrack/core/app_export.dart';
import 'package:aquatrack/widgets/custom_elevated_button.dart';
import 'package:aquatrack/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class Iphone1314OneScreen extends StatelessWidget {
  const Iphone1314OneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 45.v),
                child: Column(children: [
                  SizedBox(height: 71.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgLogo,
                      height: 165.v,
                      width: 164.h),
                  Spacer(),
                  Container(
                      width: 295.h,
                      margin: EdgeInsets.only(left: 32.h, right: 31.h),
                      child: Text("Create your Aquatrack Account",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.displaySmall!
                              .copyWith(height: 1.06))),
                  SizedBox(height: 4.v),
                  Container(
                      width: 313.h,
                      margin: EdgeInsets.only(left: 23.h, right: 22.h),
                      child: Text(
                          "Aquatrack is a powerful tool that helps you track water usage ",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyMedium!
                              .copyWith(height: 1.43))),
                  SizedBox(height: 46.v),
                  CustomElevatedButton(
                      text: "Sign Up",
                      onPressed: () {
                        onTapSignUp(context);
                      }),
                  SizedBox(height: 12.v),
                  CustomOutlinedButton(
                      text: "Log in",
                      onPressed: () {
                        onTapLogIn(context);
                      }),
                  SizedBox(height: 69.v),
                  SizedBox(
                      width: 231.h,
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "By continuing you accept our ",
                                style: theme.textTheme.bodyMedium),
                            TextSpan(
                                text: "Terms of Service",
                                style: CustomTextStyles
                                    .bodyMediumSecondaryContainer
                                    .copyWith(
                                        decoration: TextDecoration.underline)),
                            TextSpan(
                                text: " and ",
                                style: theme.textTheme.bodyMedium),
                            TextSpan(
                                text: "Privacy Policy",
                                style: CustomTextStyles
                                    .bodyMediumSecondaryContainer
                                    .copyWith(
                                        decoration: TextDecoration.underline))
                          ]),
                          textAlign: TextAlign.center))
                ]))));
  }

  /// Navigates to the iphone1314TwoScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314TwoScreen);
  }

  /// Navigates to the iphone1314FourScreen when the action is triggered.
  onTapLogIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314FourScreen);
  }
}
