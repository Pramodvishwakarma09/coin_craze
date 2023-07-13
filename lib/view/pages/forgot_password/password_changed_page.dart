import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project_stucture/view/pages/login/login_with_email_page.dart';
import 'package:project_stucture/view/widgets/app_bar.dart';

import '../../../consts/app_colors.dart';
import '../../../consts/text_theme.dart';
import '../../widgets/custom_buttons.dart';
import '../login/login_chosse_email_and_google_page.dart';

class PasswordChangeSuccessfulyPage extends StatelessWidget {
  const PasswordChangeSuccessfulyPage({super.key});

  @override

  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(elevation: 0,backgroundColor: colors.primary, centerTitle: true,),
      body: Column(
        children:[
          SizedBox(height:230),
          Center(child: textBold("Password changed Successfuly", context, 27,)),
          SizedBox(height:230),
          PrimaryBtn(btnText: 'Back to login', btnFun: () {
            Get.to(()=>LoginWithEmailPage());
          },)
        ]
      )
    );
  }
}
