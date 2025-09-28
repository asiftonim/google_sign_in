import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_sign_in/core/utils/constants/icon_path.dart';
import 'package:google_sign_in/core/utils/constants/image_path.dart';
import '../../../../../core/utils/constants/app_colors.dart';
class GoogleSignInScreen extends StatelessWidget {
  const GoogleSignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF1C0F0F),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 50.h,),
              Text("Flutter Google sign in with Firebase",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.sp,
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage(ImagePath.flutterImage),
                    height: 100.h,
                    width:100.w,
                  ),SizedBox(width: 30.w,),
                  Text("&",
                    style: TextStyle(
                      fontSize: 30.sp,
                      color: Colors.white
                    ),
                  ),
                  Image(image: AssetImage(ImagePath.firebaseImage),
                    height: 160.h,
                    width: 160.w,
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1), // ছায়ার রঙ
                          spreadRadius: 1,
                          blurRadius: 1, // ছায়ার ঝাপসা
                          offset: Offset(1, 1), // ছায়ার অবস্থান (x, y)
                        ),
                      ],
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white12.withValues(alpha: 0.8)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage(IconPath.googleIcon),
                          height: 40.h,
                          width: 40.w,
                        ),
                        SizedBox(width: 10.w,),
                        Text("Sign in with Google",
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),SizedBox(height: 10.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100.w,
                    height: 0.7.h,
                    decoration: BoxDecoration(
                        gradient: AppColors.linearGradientSilver
                    ),
                  ),SizedBox(width: 5.w,),
                  Text("Or",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white60
                    ),
                  ),
                  SizedBox(width: 5.w,),
                  Container(
                    width: 100.w,
                    height: 0.7.h,
                    decoration: BoxDecoration(
                        gradient: AppColors.linearGradientSilver
                    ),
                  ),
                ],
              ),SizedBox(height: 20.h,),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage(IconPath.facebookIcon),
                      height: 40.h,
                      width: 40.h,
                    ),SizedBox(width: 10.w,),
                    Image(image: AssetImage(IconPath.instagramIcon),
                      height: 40.h,
                      width: 40.h,
                    ),SizedBox(width: 10.w,),
                    Image(image: AssetImage(IconPath.twiterIcon),
                      height: 40.h,
                      width: 40.h,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
