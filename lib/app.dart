import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'features/authentication/google_sign_in/presentations/screens/google_sign_in_screen.dart';



class PlatformUtils {
  static bool get isIOS =>
      foundation.defaultTargetPlatform == TargetPlatform.iOS;
  static bool get isAndroid =>
      foundation.defaultTargetPlatform == TargetPlatform.android;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(440, 956),
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
         home: GoogleSignInScreen(),
        );
      },
    );
  }
}


