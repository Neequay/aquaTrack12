import 'package:aquatrack/core/app_export.dart';
import 'package:aquatrack/widgets/custom_elevated_button.dart';
import 'package:aquatrack/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';

class Iphone1314ThreeScreen extends StatelessWidget {
  const Iphone1314ThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 15.h, top: 70.v, right: 15.h),
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
                      Text("Confirm your phone",
                          style: theme.textTheme.headlineSmall),
                      SizedBox(height: 16.v),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "We sent a 6 digit code to ",
                                style: theme.textTheme.bodyMedium),
                            TextSpan(
                                text: "+2332561548",
                                style: CustomTextStyles.titleSmallSemiBold)
                          ]),
                          textAlign: TextAlign.left),
                      SizedBox(height: 26.v),
                      Padding(
                          padding: EdgeInsets.only(right: 89.h),
                          child: CustomPinCodeTextField(
                              context: context, onChanged: (value) {})),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildVerify(context)));
  }

  /// Section Widget
  Widget _buildVerify(BuildContext context) {
    return CustomElevatedButton(
        text: "Verify",
        margin: EdgeInsets.only(left: 15.h, right: 15.h, bottom: 52.v),
        onPressed: () {
          onTapVerify(context);
        });
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the iphone1314FiveScreen when the action is triggered.
  onTapVerify(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314FiveScreen);
  }
}
