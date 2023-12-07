import 'package:aquatrack/core/app_export.dart';
import 'package:aquatrack/widgets/custom_elevated_button.dart';
import 'package:aquatrack/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone1314FourScreen extends StatelessWidget {
  Iphone1314FourScreen({Key? key}) : super(key: key);

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.only(left: 15.h, top: 70.v, right: 15.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgArrowLeft,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              onTap: () {
                                onTapImgArrowLeft(context);
                              }),
                          SizedBox(height: 20.v),
                          Text("Welcome back",
                              style: theme.textTheme.headlineSmall),
                          SizedBox(height: 19.v),
                          Text("Login to your account to continue",
                              style: theme.textTheme.bodyMedium),
                          SizedBox(height: 41.v),
                          Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Text("Phone number",
                                  style: theme.textTheme.titleSmall)),
                          SizedBox(height: 8.v),
                          Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: CustomTextFormField(
                                  controller: phoneNumberController,
                                  hintText: "+233 00-000-0000")),
                          SizedBox(height: 24.v),
                          Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Text("Password",
                                  style: theme.textTheme.titleSmall)),
                          SizedBox(height: 8.v),
                          Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: CustomTextFormField(
                                  controller: passwordController,
                                  hintText: "Enter password",
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  suffix: Container(
                                      margin: EdgeInsets.all(12.h),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgEye,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize)),
                                  suffixConstraints:
                                      BoxConstraints(maxHeight: 44.v),
                                  obscureText: true,
                                  contentPadding: EdgeInsets.only(
                                      left: 12.h, top: 13.v, bottom: 13.v))),
                          SizedBox(height: 5.v)
                        ]))),
            bottomNavigationBar: _buildLogIn(context)));
  }

  /// Section Widget
  Widget _buildLogIn(BuildContext context) {
    return CustomElevatedButton(
        text: "Log in",
        margin: EdgeInsets.only(left: 15.h, right: 15.h, bottom: 52.v),
        onPressed: () {
          onTapLogIn(context);
        });
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the iphone1314SixScreen when the action is triggered.
  onTapLogIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314SixScreen);
  }
}
