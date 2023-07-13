import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project_stucture/view/pages/forgot_password/password_changed_page.dart';
import 'package:project_stucture/view/widgets/app_bar.dart';
import '../../../consts/text_theme.dart';
import '../../../routes/app_routes.dart';
import '../../widgets/custom_buttons.dart';

class ChooseNewPasswordPage extends StatelessWidget {
  const ChooseNewPasswordPage({super.key});

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
              Center(child: textBold("Choose a new password", context, 27,)),
              SizedBox(height: 75.h,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'New password',
                  hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white.withOpacity(.5)),
                ),
              ),
              SizedBox(height: 10.5.h,),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Repeat password',
                    hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white.withOpacity(.5))
                ),
              ),
              SizedBox(height: 335.h,),
              Center(child: PrimaryBtn(btnText: 'Next', btnFun: () {
                Get.to(()=>PasswordChangeSuccessfulyPage());
              },)),
              SizedBox(height: 8.h,),
              Center(child: TextButton(onPressed: (){
                Get.to(()=>ChooseNewPasswordPage);
              },
                  child: textMedium('Back to login',context , 14 ,Color(0xff26FFDA),) )),
            ],
          ),
        ),
      ),

    );
  }
}
