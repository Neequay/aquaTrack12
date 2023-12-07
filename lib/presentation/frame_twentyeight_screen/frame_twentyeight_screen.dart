import 'package:aquatrack/core/app_export.dart';
import 'package:aquatrack/widgets/custom_elevated_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class FrameTwentyeightScreen extends StatelessWidget {
  const FrameTwentyeightScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 693.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 8.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 90.h,
                  right: 76.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 3.v),
                      child: DottedBorder(
                        color: appTheme.deepPurpleA200,
                        padding: EdgeInsets.only(
                          left: 1.h,
                          top: 1.v,
                          right: 1.h,
                          bottom: 1.v,
                        ),
                        strokeWidth: 1.h,
                        radius: Radius.circular(5),
                        borderType: BorderType.RRect,
                        dashPattern: [
                          10,
                          5,
                        ],
                        child: Container(
                          padding: EdgeInsets.all(19.h),
                          decoration: AppDecoration.outlineDeepPurpleA.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 13.v),
                              Text(
                                "6 Months",
                                style: CustomTextStyles.titleSmallBluegray300,
                              ),
                              SizedBox(height: 38.v),
                              Container(
                                width: 88.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12.h,
                                  vertical: 13.v,
                                ),
                                decoration: AppDecoration.fillPrimary1.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8,
                                ),
                                child: Text(
                                  "6 Months",
                                  style: CustomTextStyles.titleSmallWhiteA700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 36.h,
                        top: 39.v,
                        bottom: 17.v,
                      ),
                      child: Column(
                        children: [
                          Text(
                            "1 Year",
                            style: theme.textTheme.titleSmall,
                          ),
                          SizedBox(height: 38.v),
                          Container(
                            width: 65.h,
                            padding: EdgeInsets.symmetric(
                              horizontal: 12.h,
                              vertical: 13.v,
                            ),
                            decoration: AppDecoration.fillPrimary1.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8,
                            ),
                            child: Text(
                              "1 Year",
                              style: CustomTextStyles.titleSmallWhiteA700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 97.h,
                        bottom: 8.v,
                      ),
                      child: DottedBorder(
                        color: appTheme.deepPurpleA200,
                        padding: EdgeInsets.only(
                          left: 1.h,
                          top: 1.v,
                          right: 1.h,
                          bottom: 1.v,
                        ),
                        strokeWidth: 1.h,
                        radius: Radius.circular(5),
                        borderType: BorderType.RRect,
                        dashPattern: [
                          10,
                          5,
                        ],
                        child: Container(
                          padding: EdgeInsets.all(19.h),
                          decoration: AppDecoration.outlineDeepPurpleA.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 149.h,
                                margin: EdgeInsets.only(right: 12.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomElevatedButton(
                                      height: 44.v,
                                      width: 88.h,
                                      text: "6 Months",
                                      buttonTextStyle:
                                          CustomTextStyles.titleSmallWhiteA700,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 13.v),
                                      child: Text(
                                        "1 Year",
                                        style: CustomTextStyles
                                            .titleSmallBluegray300,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20.v),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  width: 149.h,
                                  margin: EdgeInsets.only(left: 12.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 13.v),
                                        child: Text(
                                          "6 Months",
                                          style: CustomTextStyles
                                              .titleSmallBluegray300,
                                        ),
                                      ),
                                      Container(
                                        width: 65.h,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 12.h,
                                          vertical: 13.v,
                                        ),
                                        decoration:
                                            AppDecoration.fillPrimary1.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8,
                                        ),
                                        child: Text(
                                          "1 Year",
                                          style: CustomTextStyles
                                              .titleSmallWhiteA700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
