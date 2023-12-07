import 'package:aquatrack/core/app_export.dart';
import 'package:aquatrack/widgets/custom_elevated_button.dart';
import 'package:aquatrack/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone1314SevenScreen extends StatelessWidget {
  Iphone1314SevenScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();

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
                          SizedBox(height: 23.v),
                          Text("What should i call you?",
                              style: theme.textTheme.headlineSmall),
                          SizedBox(height: 17.v),
                          Text("set up your username",
                              style: theme.textTheme.bodyMedium),
                          SizedBox(height: 21.v),
                          CustomTextFormField(
                              controller: userNameController,
                              hintText: "enter username here",
                              textInputAction: TextInputAction.done),
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

  /// Navigates to the iphone1314SixScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314SixScreen);
  }
}
