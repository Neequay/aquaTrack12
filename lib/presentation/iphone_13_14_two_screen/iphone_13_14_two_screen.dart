import 'package:aquatrack/core/app_export.dart';
import 'package:aquatrack/widgets/custom_elevated_button.dart';
import 'package:aquatrack/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone1314TwoScreen extends StatelessWidget {
  Iphone1314TwoScreen({Key? key}) : super(key: key);

  TextEditingController phoneNumberController = TextEditingController();

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
                      SizedBox(height: 20.v),
                      Text("Create an Account",
                          style: theme.textTheme.headlineSmall),
                      SizedBox(height: 17.v),
                      Container(
                          width: 352.h,
                          margin: EdgeInsets.only(right: 6.h),
                          child: Text(
                              "Aquatrack is a powerful tool that helps you track water usage ",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyMedium!
                                  .copyWith(height: 1.43))),
                      SizedBox(height: 25.v),
                      Text("Phone number", style: theme.textTheme.titleSmall),
                      SizedBox(height: 8.v),
                      CustomTextFormField(
                          controller: phoneNumberController,
                          hintText: "+233 00-000-0000",
                          textInputAction: TextInputAction.done),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildSignUp(context)));
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
        text: "Sign Up",
        margin: EdgeInsets.only(left: 15.h, right: 15.h, bottom: 52.v),
        onPressed: () {
          onTapSignUp(context);
        });
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the iphone1314ThreeScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314ThreeScreen);
  }
}
