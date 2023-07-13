import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project_stucture/view/pages/login/login_chosse_email_and_google_page.dart';
import 'dart:math' as math;

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>with SingleTickerProviderStateMixin {

  late final AnimationController _controller = AnimationController(vsync: this, duration: Duration(seconds: 8))..repeat();
  var height =145;

    Future<void> zoomContainer() async {
      for (int i = 0; i < 220; i++) {
        print('Delaying for 1 second...');
        await Future.delayed(Duration(milliseconds: 4));
        height +10;
        print('Delaying for 1 second.$i..');
        print('Delayinh $height');
        height++;
        print(height);
        setState(() {

        });
      }
    }


  @override
  void initState() {
    zoomContainer();
    // TODO: implement initState
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
     Timer(Duration(milliseconds: 2500),(){
       Get.to( () => LoginWithEmailGooglePage());
     } );

    return  Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height : 200.h),
            Center(
              child: AnimatedBuilder(
                animation: _controller,
                builder: (_, child) {
                  return Transform.rotate(
                    angle: _controller.value * 2 * math.pi,
                    child: child,
                  );
                },
                child: SvgPicture.asset(
                  "assets/images/clogo.svg",height: height.h,width: height.h,
                ),
              ),
            ),
            SizedBox(height : 20.h),
            Text("Coin Craze" , style: TextStyle(fontSize: 40,fontFamily: "cooper"),),
          ],
        ),
      ),
    );
  }
}
