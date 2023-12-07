import 'package:flutter/material.dart';
import 'package:aquatrack/presentation/iphone_13_14_one_screen/iphone_13_14_one_screen.dart';
import 'package:aquatrack/presentation/iphone_13_14_two_screen/iphone_13_14_two_screen.dart';
import 'package:aquatrack/presentation/iphone_13_14_three_screen/iphone_13_14_three_screen.dart';
import 'package:aquatrack/presentation/iphone_13_14_five_screen/iphone_13_14_five_screen.dart';
import 'package:aquatrack/presentation/iphone_13_14_seven_screen/iphone_13_14_seven_screen.dart';
import 'package:aquatrack/presentation/iphone_13_14_six_screen/iphone_13_14_six_screen.dart';
import 'package:aquatrack/presentation/iphone_13_14_four_screen/iphone_13_14_four_screen.dart';
import 'package:aquatrack/presentation/frame_twentyeight_screen/frame_twentyeight_screen.dart';
import 'package:aquatrack/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String iphone1314OneScreen = '/iphone_13_14_one_screen';

  static const String iphone1314TwoScreen = '/iphone_13_14_two_screen';

  static const String iphone1314ThreeScreen = '/iphone_13_14_three_screen';

  static const String iphone1314FiveScreen = '/iphone_13_14_five_screen';

  static const String iphone1314SevenScreen = '/iphone_13_14_seven_screen';

  static const String iphone1314SixScreen = '/iphone_13_14_six_screen';

  static const String iphone1314FourScreen = '/iphone_13_14_four_screen';

  static const String frameTwentyeightScreen = '/frame_twentyeight_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    iphone1314OneScreen: (context) => Iphone1314OneScreen(),
    iphone1314TwoScreen: (context) => Iphone1314TwoScreen(),
    iphone1314ThreeScreen: (context) => Iphone1314ThreeScreen(),
    iphone1314FiveScreen: (context) => Iphone1314FiveScreen(),
    iphone1314SevenScreen: (context) => Iphone1314SevenScreen(),
    iphone1314SixScreen: (context) => Iphone1314SixScreen(),
    iphone1314FourScreen: (context) => Iphone1314FourScreen(),
    frameTwentyeightScreen: (context) => FrameTwentyeightScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
