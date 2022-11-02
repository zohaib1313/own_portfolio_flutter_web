import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:portfolio/pages/splash_screen.dart';

import 'common/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
      // Replace with actual values
      options: const FirebaseOptions(
          apiKey: "AIzaSyCXjdZ5ca1rF7LXqGurQ4kAU_iabQq8KIY",
          authDomain: "zohaib-portfolio-8cacb.firebaseapp.com",
          projectId: "zohaib-portfolio-8cacb",
          storageBucket: "zohaib-portfolio-8cacb.appspot.com",
          messagingSenderId: "111314500709",
          appId: "1:111314500709:web:eab746c67b2802a8d65a8c",
          measurementId: "G-HPFECRDC47"),
    );

    await FirebaseFirestore.instance
        .collection('visits')
        .doc(DateTime.now().toString())
        .set({"time": DateTime.now().toString()});
  } catch (e) {
    debugPrint("error initializing $e");
  } finally {
    runApp(const MyApplication());
  }
}

class MyApplication extends StatefulWidget {
  const MyApplication({Key? key}) : super(key: key);

  @override
  _MyApplicationState createState() => _MyApplicationState();
}

class _MyApplicationState extends State<MyApplication>
    with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1080),
      builder: (_, __) => GetMaterialApp(
        getPages: appRoutes,
        locale: const Locale('en', 'US'),
        fallbackLocale: const Locale('en', 'US'),
        localizationsDelegates: const [
          DefaultCupertinoLocalizations.delegate,
          DefaultMaterialLocalizations.delegate,
        ],
        scrollBehavior: MyScrollBehavior(),
        debugShowCheckedModeBanner: false,
        navigatorKey: navigatorKey,
        home: const SplashScreen(),
      ),
    );
  }
}

class MyScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
        PointerDeviceKind.unknown,
        PointerDeviceKind.invertedStylus,
      };
}
