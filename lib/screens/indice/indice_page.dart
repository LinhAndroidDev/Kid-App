import 'package:flutter/material.dart';

import '../../gen/colors.dart';

class IndicePage extends StatelessWidget {
  const IndicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Indices Page',
            style: TextStyle(
                color: ColorName.black,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
