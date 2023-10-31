// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:myproject/welcome_view.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark)
  );

  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
  title: "Find your roommate",
  themeMode: ThemeMode.dark,
  theme: ThemeData.dark().copyWith(
    primaryColor: Colors.blue,
    hintColor: Colors.white,
    textTheme: TextTheme(
      subtitle1: TextStyle(color: Colors.white),
    ),
    
  ),
  debugShowCheckedModeBanner: false,
  defaultTransition: Transition.cupertino,
  opaqueRoute: Get.isOpaqueRouteDefault,
  popGesture: Get.isPopGestureEnable,
  transitionDuration: const Duration(milliseconds: 230),
  home: const WelcomeView(), // Replace MyHomePage with your actual home screen widget.
);

      
  }
}
