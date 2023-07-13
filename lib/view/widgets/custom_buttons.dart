import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_stucture/consts/app_colors.dart';
import 'package:project_stucture/consts/text_theme.dart';


class PrimaryBtn extends StatelessWidget {
  const PrimaryBtn({Key? key ,required this.btnText ,required this.btnFun,this.btnclr,this.btntextclr, this.btnHW,  this.loading}) : super(key: key);
  final String btnText;
  final VoidCallback btnFun;
  final Color ? btnclr;
  final Color ? btntextclr;
  final Size ? btnHW;
  final bool ? loading;
  @override
  Widget build(BuildContext context) {

    return loading??false ? Container(
        decoration: BoxDecoration(
            color:colors.primary,
            borderRadius: BorderRadius.circular(13)),
        width: MediaQuery.of(context).size.width,
        height: 56.h,
        child: const Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ))

    ) : ElevatedButton(
      onPressed: btnFun,
      style:getBtnStyle(context) ,
      child: textMedium("$btnText",context,16),
    );
  }
  getBtnStyle(context) => ElevatedButton.styleFrom(
      side:  BorderSide(
        width: .7,
        color: Colors.white,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(13),),
        backgroundColor:btnclr ??  colors.primary,
       fixedSize:  btnHW ??  Size(239.w, 56.h),
  );
}
class PrimaryBtn2 extends StatelessWidget {
  const PrimaryBtn2({Key? key ,required this.btnText ,required this.btnFun,this.btnclr,this.btntextclr, this.btnHW,  this.loading}) : super(key: key);
  final String btnText;
  final VoidCallback btnFun;
  final Color ? btnclr;
  final Color ? btntextclr;
  final Size ? btnHW;
  final bool ? loading;
  @override
  Widget build(BuildContext context) {

    return loading??false ? Container(
        decoration: BoxDecoration(
            color:colors.primary,
            borderRadius: BorderRadius.circular(13)),
        width: MediaQuery.of(context).size.width,
        height: 56.h,
        child: const Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ))

    ) : ElevatedButton(
      onPressed: btnFun,
      style:getBtnStyle(context) ,
      child: textBold("$btnText",context,12.sp,Colors.black,),
    );
  }
  getBtnStyle(context) => ElevatedButton.styleFrom(
    side:  BorderSide(
      width: .7,
      color: Colors.white,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(topRight: Radius.circular(13),bottomRight: Radius.circular(13)),),
    backgroundColor:btnclr ??  colors.white,
    fixedSize:  btnHW ??  Size(200.w, 56.h),
  );
}

