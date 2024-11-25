import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kid_app/gen/colors.dart';

class ButtonCancel extends StatelessWidget {
  const ButtonCancel({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.back(),
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey, width: 2),
        ),
        child: const Icon(Icons.close, size: 23, color: ColorName.white,),
      ),
    );
  }
}
