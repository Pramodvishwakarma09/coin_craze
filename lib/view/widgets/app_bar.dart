import 'package:flutter/material.dart';
import '../../consts/app_colors.dart';

AppBar PrimaryAppBar(context,[bool ? icon]){
  return AppBar(
    elevation: 0,
    backgroundColor: colors.primary,

    centerTitle: true,
     leading: IconButton(
      onPressed: (){
        Navigator.pop(context);
      },
      icon: const Icon(Icons.arrow_back_ios, color: colors.white,),

    ),
  );
}


