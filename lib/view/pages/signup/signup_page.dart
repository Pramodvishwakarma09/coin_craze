import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project_stucture/consts/text_theme.dart';
import 'package:project_stucture/routes/app_routes.dart';
import 'package:project_stucture/view/widgets/app_bar.dart';
import '../../../consts/app_colors.dart';
import '../../widgets/custom_buttons.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PrimaryAppBar(context),
      body:  Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height:10.h),
                Center(child: textBold("Sign up", context, 27,)),
                SizedBox(height: 11.h,),
                Center(child: textMedium('Create your account',context, 14,Colors.white.withOpacity(.5),),),
                SizedBox(height: 47.h,),
                SizedBox(height: 10.5.h,),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Name',
                    hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white.withOpacity(.5)),
                  ),
                ),
                SizedBox(height: 15.h,),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Email address',
                      hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white.withOpacity(.5))
                  ),
                ),
                SizedBox(height: 15.h,),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white.withOpacity(.5)),

                  ),
                ),
                SizedBox(height: 120.5.h,),
                Center(child: textMedium('By signing up, you agree to',context,14,Colors.white.withOpacity(.5)),),
                SizedBox(height: 5.h,),
                Center(child: textMedium('Terms of Service & Privacy Policy.',context,14,Color(0xff26FFDA))),
                SizedBox(height: 20.h,),
                Center(child: PrimaryBtn(btnText: 'Sign up', btnFun: () {
                  Get.toNamed(AppRoutes.signUpEmailOtpPage);

                },)),
                SizedBox(height: 8.h,),
                Center(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    textMedium('Already have an account?',context,14,Colors.white.withOpacity(.50)),
                    SizedBox(width: 5.5.h,),
                    TextButton(onPressed: (){
                      Get.toNamed(AppRoutes.loginWithEmailGooglePage);
                    },
                        child: textMedium('Log In',context , 14 ,Color(0xff26FFDA),) )

                  ],
                )),
              ],
            ),
        ),
      ),

    );
  }
}
