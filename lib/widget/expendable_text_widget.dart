import 'package:flutter/material.dart';
import 'package:food_delivery/utils/color.dart';
import 'package:food_delivery/utils/dimention.dart';
import 'package:food_delivery/widget/small_text.dart';

class TextExtend extends StatefulWidget {
  final String text;

  const TextExtend({Key? key, required this.text}) : super(key: key);

  @override
  State<TextExtend> createState() => _TextExtendState();
}

class _TextExtendState extends State<TextExtend> {
  late String firstHalf;
  late String SecondHalf;

  bool hiddenText = true;

  double textHeight = Dimensions.screenHeight / 5.63;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      SecondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      SecondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SecondHalf.isEmpty
            ? SmallText(
                height: 1.8,
                color: AppColor.paragraphColor,
                size: Dimensions.font16,
                text: firstHalf)
            : Column(
                children: [
                  SmallText(
                      color: AppColor.paragraphColor,
                      size: Dimensions.font16,
                      text: hiddenText
                          ? (firstHalf + "...")
                          : (firstHalf + SecondHalf)),
                  InkWell(
                      onTap: () {
                        setState(() {
                          hiddenText = !hiddenText;
                        });
                      },
                      child: Row(
                        children: [
                          SmallText(
                            text: "show more",
                            color: AppColor.mainColor,
                          ),
                          Icon(
                            hiddenText
                                ? Icons.arrow_drop_down
                                : Icons.arrow_drop_up,
                            color: AppColor.mainColor,
                          ),
                        ],
                      ))
                ],
              ));
  }
}
