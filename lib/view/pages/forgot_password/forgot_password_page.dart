import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../consts/app_colors.dart';
import '../../../consts/text_theme.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/custom_buttons.dart';
import 'choose_a_new_password_page.dart';
import 'forgot_otp_page.dart';
import 'forgot_password_otp_page.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PrimaryAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: textBold("Password Recovery", context, 27,)),
            SizedBox(height: 47.h,),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Email address',
                hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white.withOpacity(.5)),
              ),
            ),
            SizedBox(height: 380.5.h,),

            Center(child: PrimaryBtn(btnText: 'Next', btnFun: () {
              Get.to(()=>ForgotPasswordOtpPage());
            },)),
            SizedBox(height: 8.h,),
            Center(child: TextButton(onPressed: (){
              Get.back();
            },
                child: textMedium('Back to login',context , 14 ,Color(0xff26FFDA),) )),
          ],
        ),
      ),
    );
  }
}
