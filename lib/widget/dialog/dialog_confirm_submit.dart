import 'package:flutter/material.dart';
import 'package:kid_app/style/text_style.dart';

class DialogConfirmSubmit extends StatelessWidget {
  const DialogConfirmSubmit({super.key, required this.onTapAgree});

  final VoidCallback onTapAgree;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: 280,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Xác nhận nộp bài', style: text16BoldBlack,),
              const SizedBox(height: 15,),
              Text('Bạn có chắc chắc muốn nộp bài chứ?', style: textNormal300BlueDark,),
              Row(
                children: [
                  const Spacer(),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Hủy', style: textNormalBlack,),
                    ),
                  ),
                  const SizedBox(width: 40,),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        onTapAgree.call();
                      },
                      child: Text('Đồng ý', style: textNormalBlack.copyWith(fontWeight: FontWeight.bold, color: Colors.blue),),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
    );
  }
}
