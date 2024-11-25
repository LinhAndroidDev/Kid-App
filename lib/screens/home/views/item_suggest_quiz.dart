
import 'package:flutter/material.dart';
import 'package:kid_app/gen/colors.dart';
import 'package:kid_app/style/text_style.dart';

class ItemSuggestQuiz extends StatelessWidget {
  const ItemSuggestQuiz({
    super.key,
    required this.topic,
    required this.imageSuggest,
    required this.numberQuestion,
    required this.colorProgress,
    required this.percentComplete,
  });

  final String topic;
  final Image imageSuggest;
  final int numberQuestion;
  final Color colorProgress;
  final double percentComplete;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.antiAlias,
      elevation: 1,
      color: ColorName.white,
      child: SizedBox(
        width: 220,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            imageSuggest,
            const SizedBox(height: 5),
            Container(
                margin: const EdgeInsets.only(left: 10),
                child: Text(topic, style: text18BoldBlack)),
            Row(
              children: [
                const SizedBox(width: 10,),
                Text('$numberQuestion questions', style: text12ThinBlack),
                const Spacer(),
                SizedBox(
                  width: 90,
                  height: 5,
                  child: LinearProgressIndicator(
                    value: percentComplete,
                    valueColor: AlwaysStoppedAnimation<Color>(colorProgress),
                    color: Colors.grey,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                const SizedBox(width: 10,),
              ],
            ),
            const SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
