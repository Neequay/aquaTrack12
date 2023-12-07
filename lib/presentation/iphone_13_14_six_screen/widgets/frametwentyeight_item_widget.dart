import 'package:aquatrack/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FrametwentyeightItemWidget extends StatelessWidget {
  const FrametwentyeightItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.only(
        left: 12.h,
        top: 9.v,
        bottom: 9.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Add Meter",
        style: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
      ),
      deleteIcon: CustomImageView(
        imagePath: ImageConstant.imgArrowuprightWhiteA700,
        height: 20.adaptSize,
        width: 20.adaptSize,
        margin: EdgeInsets.only(left: 4.h),
      ),
      onDeleted: () {},
      selected: false,
      backgroundColor: theme.colorScheme.primary,
      selectedColor: appTheme.blue100,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          18.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
