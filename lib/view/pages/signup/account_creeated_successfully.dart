import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:project_stucture/view/pages/signup/signup_page.dart';

import '../../../consts/app_colors.dart';
import '../../../consts/text_theme.dart';
import '../../widgets/custom_buttons.dart';
import '../login/login_with_email_page.dart';

class AccountCreatedSuccessfullyPage extends StatelessWidget {
  const AccountCreatedSuccessfullyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height:300.h),
              Center(child: textBold("Account created successfully", context, 27,)),

              SizedBox(height: 250.5.h,),
              Center(child: PrimaryBtn(btnText: 'Back to login', btnFun: () {
                Get.to(()=>LoginWithEmailPage());
              },)),

            ],
          ),
        ),
      ),
    );
  }
}
