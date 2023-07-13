// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:project_stucture/view/widgets/app_bar.dart';
// import '../../../consts/text_theme.dart';
// import '../../widgets/custom_buttons.dart';
// import 'choose_a_new_password_page.dart';
//
// class ForgotOtpPage extends StatelessWidget {
//   const ForgotOtpPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: PrimaryAppBar(context),
//       body:  Padding(
//         padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 10.h,),
//             Center(child: textBold("Check your email", context, 27,)),
//             SizedBox(height: 47.h,),
//
//             TextField(
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(
//                 hintText: ' Enter 8 -digit -code',
//                 hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white.withOpacity(.5)),
//               ),
//             ),
//             SizedBox(height: 380.5.h,),
//             Center(child: PrimaryBtn(btnText: 'Next', btnFun: () {
//               Get.to(()=>ChooseNewPasswordPage());
//             },)),
//             SizedBox(height: 8.h,),
//             Center(child: TextButton(onPressed: (){},
//                 child: textMedium('Back to login',context , 14 ,Color(0xff26FFDA),) )),
//           ],
//         ),
//       ),
//     );
//   }
// }
