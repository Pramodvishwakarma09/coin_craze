import 'package:flutter/material.dart';

class UnKnownPage extends StatelessWidget {
  const UnKnownPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Unknown Page'),
      ),
      body: const Center(
        child: Text('Unknown Page'),)
    );
  }
}
