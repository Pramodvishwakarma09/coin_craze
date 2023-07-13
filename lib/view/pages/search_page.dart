import 'package:flutter/material.dart';

import '../../consts/text_theme.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: textMedium("Search", context,13),
      ),
      body: Center(
        child: textMedium("Search", context,13),)
    );
  }
}
