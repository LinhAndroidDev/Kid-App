import 'package:flutter/material.dart';

import '../../gen/colors.dart';

class ControlButton extends StatelessWidget {
  const ControlButton(
      {super.key,
      required this.onClick,
      this.rotation = 3.14159,
      required this.scale,
      required this.onScaleUp,
      required this.onScaleDown});

  final VoidCallback onClick;
  final double rotation;
  final double scale;
  final VoidCallback onScaleUp;
  final VoidCallback onScaleDown;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClick.call();
      },
      onTapUp: (_) {
        onScaleUp.call();
      },
      onTapDown: (_) {
        onScaleDown.call();
      },
      onTapCancel: () {
        onScaleUp.call();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        transform: Matrix4.identity()..scale(scale),
        decoration: BoxDecoration(
          color: ColorName.purpleWhite,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: ColorName.purpleLight.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 22),
              decoration: BoxDecoration(
                color: ColorName.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Transform.rotate(
                  angle: rotation,
                  child: const Icon(Icons.keyboard_backspace,
                      size: 30, color: ColorName.purpleLight)),
            ),
            const SizedBox(
              height: 7,
            ),
          ],
        ),
      ),
    );
  }
}
