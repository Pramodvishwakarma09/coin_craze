import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project_stucture/consts/text_theme.dart';
import 'package:project_stucture/routes/app_routes.dart';
import 'package:project_stucture/view/pages/dashboard_page.dart';
import '../../../consts/app_colors.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/custom_buttons.dart';

class LoginWithEmailPage extends StatelessWidget {
  const LoginWithEmailPage({super.key});

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
              Center(child: textBold("Login", context, 27,)),
              SizedBox(height: 11.h,),
              Center(child: textMedium('Login your account',context, 14,Colors.white.withOpacity(.5),),),
              SizedBox(height: 47.h,),
              SizedBox(height: 10.5.h,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Eamil address',
                  hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white.withOpacity(.5)),
                ),
              ),
              SizedBox(height: 10.5.h,),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white.withOpacity(.5))
                ),
              ),
              SizedBox(height: 10.5.h,),
              InkWell(
                onTap: (){
                Get.toNamed(AppRoutes.forgotPasswordPage);
              },

              child :textMedium('Forgot password?',context,14,Color(0xff26FFDA)),),
              SizedBox(
                width: 115.w,
                child: Divider(
                  height: 3,
                    color : colors.lightgreen),
                 ),


              SizedBox(height: 180.5.h,),
              Center(child: textMedium('By signing up, you agree to',context,14,Colors.white.withOpacity(.5)),),
              SizedBox(height: 5.h,),
              Center(child: textMedium('Terms of Service & Privacy Policy.',context,14,Color(0xff26FFDA))),
              SizedBox(height: 15.h,),
              Center(child: PrimaryBtn(btnText: 'Login', btnFun: () {
                Get.to(()=>DashboardPage());
              },)),
              Center(child: TextButton(onPressed: (){
                Get.toNamed(AppRoutes.loginWithEmailGooglePage);
              },
                  child: textMedium('Not a member?',context , 14 ,Color(0xff26FFDA),) )),
            ],
          ),
        ),
      ),

    );
  }
}
