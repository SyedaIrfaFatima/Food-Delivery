import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/color.dart';
import 'package:food_delivery/utils/dimention.dart';
import 'package:food_delivery/widget/big_text.dart';
import 'package:food_delivery/widget/icon_Tetx_widget.dart';
import 'package:food_delivery/widget/small_text.dart';

class AppColumn extends StatefulWidget {
  final String text;
  AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  State<AppColumn> createState() => _AppColumnState();
}

class _AppColumnState extends State<AppColumn> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: widget.text,
          size: Dimensions.font26,
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          children: [
            Wrap(
                children: List.generate(
                    5,
                    (index) => Icon(
                          Icons.star,
                          color: AppColor.mainColor,
                          size: 15,
                        ))),
            SizedBox(
              width: 5,
            ),
            SmallText(text: "4.5"),
            SizedBox(
              width: 5,
            ),
            SmallText(text: "1287"),
            SizedBox(
              width: 5,
            ),
            SmallText(text: "comments"),
          ],
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndText(
                icon: Icons.circle_sharp,
                text: "Normal",
                iconColor: AppColor.iconColor1),
            SizedBox(
              width: 3,
            ),
            IconAndText(
                icon: Icons.location_on,
                text: "1.7 km",
                iconColor: AppColor.mainColor),
            SizedBox(
              width: 3,
            ),
            IconAndText(
                icon: Icons.access_time_rounded,
                text: "32 min",
                iconColor: AppColor.iconColor2),
          ],
        )
      ],
    ));
  }
}
