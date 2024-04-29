import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimention.dart';

import 'small_text.dart';

class IconAndText extends StatelessWidget {
  final IconData icon;
  final String text;

  final Color iconColor;

  const IconAndText(
      {Key? key,
      required this.icon,
      required this.text,
      required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor, size: Dimensions.iconSize24),
        SizedBox(
          width: 3,
        ),
        SmallText(text: text),
        // SizedBox(
        //   width: 3,
        // ),
        // SmallText(text: "1287"),
        // SizedBox(
        //   width: 3,
        // ),
        // SmallText(text: "comments"),
      ],
    );
  }
}
