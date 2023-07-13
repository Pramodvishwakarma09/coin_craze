import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../consts/app_colors.dart';
import '../../consts/text_theme.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 List selected =[  "0", "0", "0", "0", "0", "0"];

 List selected2 =[ "F", "F", "F", "F"];

   @override
  Widget build(BuildContext context) {
     print("width : ${MediaQuery
         .of(context)
         .size
         .width}");
    return  Scaffold(
      backgroundColor: Color(0xff06041C),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width : 1.w),
                  Container(
                    height: 40.h,
                    width: 220.w,
                    decoration: BoxDecoration(
                      color: Color(0xff0F0A42),
                     border: Border.all(color : Colors.white12),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(child: Row(
                      children: [
                        SizedBox(width : 20.w),
                        textsemiBold("Filter", context, 18,colors.white.withOpacity(.5)),
                      ],
                    )),
                  ),
                  SizedBox(width : 5.w),
                  IconButton(onPressed: (){}, icon: Icon(Icons.filter_list_sharp,color: colors.lightgreen,)),
                  SizedBox(width : 4.w),
                  textMedium("Symbol", context, 16)
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 30,
                  itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff595959),width: .5),
                        color: Color(0xff04002E),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      height: 73.h,width:double.infinity ,
                      child: Row(
                        children: [
                          SizedBox(width : 12.w),
                          CircleAvatar(
                            radius: 24.h,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage("assets/images/img.png"),
                          ),
                          SizedBox(width : 12.w),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                textBold("BTC",context,14),
                                textBold("Bitcoin",context,14,colors.white.withOpacity(.50)),
                              ]
                          ),
                          Spacer(),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                textBold("\$8637",context,14),
                                textsemiBold("1.5%",context,11,Color(0xff00C534)),
                              ]
                          ),
                          SizedBox(width : 12.w),

                        ],
                      ),),
                  );
                  }

              ),
            ),
          ],
        ),
      )
    );
  }
}
