import '../iphone_13_14_six_screen/widgets/frametwentyeight_item_widget.dart';
import 'package:aquatrack/core/app_export.dart';
import 'package:aquatrack/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class Iphone1314SixScreen extends StatelessWidget {
  const Iphone1314SixScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 28.v),
              _buildFrameThirty(context),
              SizedBox(height: 13.v),
              _buildFrameSeventeen(context),
              SizedBox(height: 10.v),
              _buildFortyOne(context),
              SizedBox(height: 23.v),
              Divider(),
              SizedBox(height: 28.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Row(
                    children: [
                      CustomElevatedButton(
                        height: 44.v,
                        width: 88.h,
                        text: "6 Months",
                        buttonTextStyle: CustomTextStyles.titleSmallWhiteA700,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20.h,
                          top: 13.v,
                          bottom: 13.v,
                        ),
                        child: Text(
                          "1 Year",
                          style: CustomTextStyles.titleSmallBluegray300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 27.v),
              _buildThirtyNine(context),
              SizedBox(height: 7.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 57.h,
                  right: 51.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Text(
                        "Apr",
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Text(
                        "May",
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 28.h),
                      child: Text(
                        "Jun",
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 28.h,
                        top: 1.v,
                      ),
                      child: Text(
                        "July",
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 28.h,
                        top: 1.v,
                      ),
                      child: Text(
                        "Aug",
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 28.h,
                        top: 1.v,
                      ),
                      child: Text(
                        "Sep",
                        style: theme.textTheme.labelLarge,
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

  /// Section Widget
  Widget _buildFrameThirty(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 24.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Good Morning,",
                style: CustomTextStyles.bodyMediumInterOnPrimaryContainer,
              ),
              SizedBox(height: 9.v),
              Text(
                "Kwame Harry",
                style: CustomTextStyles.headlineSmallBluegray800,
              ),
            ],
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgBell,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 15.v,
              bottom: 16.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGearsix,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 26.h,
              top: 15.v,
              bottom: 16.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameSeventeen(BuildContext context) {
    return Container(
      width: 358.h,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Meter number",
            style: CustomTextStyles.bodyMediumInterOnPrimaryContainer,
          ),
          SizedBox(height: 8.v),
          Text(
            "AJ2005F",
            style: theme.textTheme.headlineLarge,
          ),
          SizedBox(height: 11.v),
          Wrap(
            runSpacing: 10.v,
            spacing: 10.h,
            children: List<Widget>.generate(
                2, (index) => FrametwentyeightItemWidget()),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyOne(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.h,
          right: 33.h,
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(11.h),
              decoration: AppDecoration.outlineIndigo.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Today Consumption",
                    style: theme.textTheme.labelLarge,
                  ),
                  SizedBox(height: 10.v),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "7562",
                          style: theme.textTheme.headlineSmall,
                        ),
                        TextSpan(
                          text: " ",
                        ),
                        TextSpan(
                          text: "kWh",
                          style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 5.v),
                  Row(
                    children: [
                      Text(
                        "+055",
                        style: CustomTextStyles.labelLargeRed800,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          "From last month",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgFrame22,
              height: 63.v,
              width: 138.h,
              margin: EdgeInsets.only(
                left: 29.h,
                top: 37.v,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtyNine(BuildContext context) {
    return Container(
      width: 358.h,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(horizontal: 26.h),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup39,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 19.v),
          CustomImageView(
            imagePath: ImageConstant.imgFrame25,
            height: 204.v,
            width: 300.h,
          ),
        ],
      ),
    );
  }
}
