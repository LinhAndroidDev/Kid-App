import 'package:flutter/material.dart';

import '../../gen/assets.dart';
import '../../gen/colors.dart';
import '../../style/text_style.dart';

class CompleteQuizPage extends StatelessWidget {
  const CompleteQuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(height: 80,),
            SizedBox(
              width: double.infinity,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const SizedBox(
                    width: 120,
                    height: 120,
                    child: CircularProgressIndicator(
                      value: 0.6,
                      valueColor: AlwaysStoppedAnimation<Color>(ColorName.blue),
                      backgroundColor: ColorName.greyPurple,
                      strokeWidth: 8,
                      strokeCap: StrokeCap.round,
                    ),
                  ),
                  Text('60%', style: text25White.copyWith(fontWeight: FontWeight.w500, color: ColorName.blue),)
                ],
              ),
            ),
            const SizedBox(height: 30,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFFA62E9), Color(0xFFFFB0F6)],
                ),
                borderRadius: BorderRadius.circular(15),
                // boxShadow: [
                //   BoxShadow(
                //     color: ColorName.black.withOpacity(0.5),
                //     spreadRadius: 1,
                //     blurRadius: 3,
                //     offset: const Offset(0, 1),
                //   ),
                // ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20,),
                  Text('Bạn đã nộp bài thành công', style: text18BoldBlack.copyWith(color: ColorName.white, fontSize: 20),),
                  const SizedBox(height: 15,),
                  Assets.images.coins5.image(width: 60, height: 60,),
                  const SizedBox(height: 15,),
                  Text('Bạn đã nhận được 10 xu', style: textNormal300BlueDark.copyWith(color: ColorName.white),),
                  const SizedBox(height: 10,),
                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text('Quay lại trang chủ', style: textNormalBlack.copyWith(fontWeight: FontWeight.bold),),
                  ),
                  const SizedBox(height: 20,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
