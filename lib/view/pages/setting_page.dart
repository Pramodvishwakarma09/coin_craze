import 'package:flutter/material.dart';

import '../../consts/text_theme.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: textMedium("SettingPage", context,13),
        ),
        body: Center(
          child: textMedium("SettingPage", context,13),)
    );
  }
}
