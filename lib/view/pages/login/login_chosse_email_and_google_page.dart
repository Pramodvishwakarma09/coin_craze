import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project_stucture/consts/text_theme.dart';
import 'package:project_stucture/routes/app_routes.dart';
import 'package:project_stucture/view/widgets/app_bar.dart';
import '../../../consts/app_colors.dart';
import '../../widgets/custom_buttons.dart';

class LoginWithEmailGooglePage extends StatelessWidget {
  const LoginWithEmailGooglePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(elevation: 0,backgroundColor: colors.primary, centerTitle: true,),
      body:  Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: textBold("Sign in", context, 27,)),
            SizedBox(height: 30.h,),
            Center(
              child: SvgPicture.asset(
                "assets/images/clogo.svg",height: 145.h,width: 145.h,
              ),
            ),
            SizedBox(height: 105.h,),
            Center(child: PrimaryBtn(btnText: 'Sign up with email', btnFun: () {
              Get.toNamed(AppRoutes.signupPage);

            },)),
            SizedBox(height: 22.h,),

            Center(child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height:56.h,
                  width : 40.w,
                  decoration: BoxDecoration(
                      color : colors.white,

                      borderRadius: BorderRadius.only(topLeft: Radius.circular(13),bottomLeft: Radius.circular(13))
                  ),
                  child: Padding(
                    padding:  EdgeInsets.all(10.h),
                    child: SvgPicture.asset(
                      "assets/images/Google_icon.svg",height: 25.h,width: 25.h,
                    ),
                  ),
                ),
                PrimaryBtn2(btnText: 'Continue with Google', btnFun: () {
                  Get.toNamed(AppRoutes.signUpEmailOtpPage);
                },),
              ],
            )),
            SizedBox(height: 28.h,),
            Center(child: textMedium('By signing up, you agree to',context,14,Colors.white.withOpacity(.5)),),
            SizedBox(height: 5.h,),
            Center(child: textMedium('Terms of Service & Privacy Policy.',context,14,Color(0xff26FFDA))),
            SizedBox(height: 60.h,),
            Center(child: TextButton(onPressed: (){
              Get.toNamed(AppRoutes.loginWithEmailPage);
            },
                child: textMedium('Login with email',context , 14 ,Color(0xff26FFDA),) )),
          ],
        ),
      ),

    );
  }
}
