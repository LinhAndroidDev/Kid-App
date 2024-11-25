import 'package:flutter/material.dart';

import '../../gen/colors.dart';

class CoinPage extends StatelessWidget {
  const CoinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Coin Page',
            style: TextStyle(
                color: ColorName.black,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
