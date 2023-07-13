import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:project_stucture/view/pages/home_page.dart';
import 'package:project_stucture/view/pages/login/login_with_email_page.dart';
import 'package:project_stucture/view/pages/signup/signup_page.dart';
import 'package:project_stucture/view/pages/unknown_page.dart';

import '../view/pages/forgot_password/forgot_password_page.dart';
import '../view/pages/login/login_binding.dart';
import '../view/pages/login/login_chosse_email_and_google_page.dart';
import '../view/pages/signup/signup_otp_page.dart';
import '../view/pages/signup/singup_binding.dart';

class AppRoutes{

  static String initial= "/";
  static String homePage= "/homePage";
  static String loginWithEmailPage= "/loginWithEmailPage";
  static String signupPage= "/signupPage";
  static String loginWithEmailGooglePage= "/loginWithEmailGooglePage";



  static String signUpEmailOtpPage= "/signUpEmailOtpPage";
  static String forgotPasswordPage= "/forgotPasswordPage";

  static String orordPage= "/forgotPasswordPage";
  static String orgPage= "/forgotPasswordPage";
  static String orgotPassordPage= "/forgotPasswordPage";
  static String wordPage= "/forgotPasswordPage";








}

class GetAppRoutes{

  List<GetPage> getRoutes(){

    return [
      GetPage(
        name: AppRoutes.loginWithEmailGooglePage,
        page: ()=>LoginWithEmailGooglePage(),
        binding: Page1Binding(),
      ),
      GetPage(
        name: AppRoutes.signupPage,
        page: ()=>SignUpPage(),
        binding: Page2Binding(),
      ),
      GetPage(
          name: AppRoutes.loginWithEmailPage,
          page: ()=>LoginWithEmailPage()
      ),


      GetPage(
          name: AppRoutes.signUpEmailOtpPage,
          page: ()=>SignUpEmailOtpPage(),
        binding: Page2Binding(),
      ),

      GetPage(
          name: AppRoutes.forgotPasswordPage,
          page: ()=>ForgotPasswordPage()
      ),
    ];


  }

}