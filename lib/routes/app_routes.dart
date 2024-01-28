import 'package:flutter/material.dart';
import 'package:simwa17_s_application1/presentation/splash_screen/splash_screen.dart';
import 'package:simwa17_s_application1/presentation/tutorial_screen/tutorial_screen.dart';
import 'package:simwa17_s_application1/presentation/login_screen/login_screen.dart';
import 'package:simwa17_s_application1/presentation/home_container_screen/home_container_screen.dart';
import 'package:simwa17_s_application1/presentation/location_screen/location_screen.dart';
import 'package:simwa17_s_application1/presentation/splash_mockup_screen/splash_mockup_screen.dart';
import 'package:simwa17_s_application1/presentation/tutorial_mockup_screen/tutorial_mockup_screen.dart';
import 'package:simwa17_s_application1/presentation/login_mockup_screen/login_mockup_screen.dart';
import 'package:simwa17_s_application1/presentation/home_mockup_screen/home_mockup_screen.dart';
import 'package:simwa17_s_application1/presentation/location_mockup_screen/location_mockup_screen.dart';
import 'package:simwa17_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String tutorialScreen = '/tutorial_screen';

  static const String loginScreen = '/login_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String locationScreen = '/location_screen';

  static const String splashMockupScreen = '/splash_mockup_screen';

  static const String tutorialMockupScreen = '/tutorial_mockup_screen';

  static const String loginMockupScreen = '/login_mockup_screen';

  static const String homeMockupScreen = '/home_mockup_screen';

  static const String locationMockupScreen = '/location_mockup_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    tutorialScreen: (context) => TutorialScreen(),
    loginScreen: (context) => LoginScreen(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    locationScreen: (context) => LocationScreen(),
    splashMockupScreen: (context) => SplashMockupScreen(),
    tutorialMockupScreen: (context) => TutorialMockupScreen(),
    loginMockupScreen: (context) => LoginMockupScreen(),
    homeMockupScreen: (context) => HomeMockupScreen(),
    locationMockupScreen: (context) => LocationMockupScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
