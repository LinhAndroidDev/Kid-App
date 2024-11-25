import 'package:flutter/material.dart';
import 'package:kid_app/gen/colors.dart';
import 'package:kid_app/style/text_style.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key,
      required this.onClick,
      required this.text,
      this.selectCorrect = 0,
      this.isDisable = false,
      });

  final VoidCallback onClick;
  final String text;
  final int selectCorrect;
  final bool isDisable;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!isDisable) {
          onClick.call();
        }
      },
      child: Container(
          decoration: BoxDecoration(
            color: ColorName.purpleWhite,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    decoration: BoxDecoration(
                      color: ColorName.white,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Text(
                      text,
                      style: (selectCorrect == 0)
                          ? text16BoldBlack
                          : text16BoldBlack.copyWith(
                              color: (selectCorrect == 1)
                                  ? ColorName.greenDark
                                  : ColorName.red),
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                ],
              ),
              if (selectCorrect != 0)
                Container(
                  margin: const EdgeInsets.only(left: 10, bottom: 7),
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (selectCorrect == 1)
                          ? ColorName.greenDark
                          : ColorName.red),
                  child: Icon((selectCorrect == 1) ? Icons.done : Icons.close,
                      size: 15, color: ColorName.white),
                ),
            ],
          )),
    );
  }
}
