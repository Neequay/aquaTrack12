import 'package:aquatrack/core/app_export.dart';
import 'package:aquatrack/widgets/custom_elevated_button.dart';
import 'package:aquatrack/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone1314FiveScreen extends StatelessWidget {
  Iphone1314FiveScreen({Key? key}) : super(key: key);

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordController1 = TextEditingController();

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
                          SizedBox(height: 22.v),
                          Text("Create password",
                              style: theme.textTheme.headlineSmall),
                          SizedBox(height: 16.v),
                          Text("create password to secure your account",
                              style: theme.textTheme.bodyMedium),
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
                                  hintText: "+233 00-000-0000",
                                  textInputType: TextInputType.visiblePassword,
                                  suffix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 12.v, 12.h, 12.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgEye,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize)),
                                  suffixConstraints:
                                      BoxConstraints(maxHeight: 44.v),
                                  obscureText: true,
                                  contentPadding: EdgeInsets.only(
                                      left: 12.h, top: 13.v, bottom: 13.v))),
                          SizedBox(height: 18.v),
                          Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Text("Repeat password",
                                  style: theme.textTheme.titleSmall)),
                          SizedBox(height: 7.v),
                          Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: CustomTextFormField(
                                  controller: passwordController1,
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
            bottomNavigationBar: _buildContinue(context)));
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
        text: "Continue",
        margin: EdgeInsets.only(left: 15.h, right: 15.h, bottom: 52.v),
        onPressed: () {
          onTapContinue(context);
        });
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the iphone1314SevenScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314SevenScreen);
  }
}
