import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:food_delivery/pages/home/food_page_body.dart';

import 'package:food_delivery/utils/color.dart';
import 'package:food_delivery/utils/dimention.dart';
import 'package:food_delivery/widget/big_text.dart';
import 'package:food_delivery/widget/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    print("current height is" + MediaQuery.of(context).size.height.toString());
    return Scaffold(
        body: Column(children: [
      //showing header
      Container(
          color: Colors.white,
          child: Container(
            margin: EdgeInsets.only(
                top: Dimensions.height45, bottom: Dimensions.height15),
            padding: EdgeInsets.only(
                left: Dimensions.width20, right: Dimensions.width20),
            child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: "Pakistan",
                        color: AppColor.mainColor,
                        size: 30,
                      ),
                      Row(
                        children: [
                          SmallText(text: "Wah Cantt", color: Colors.black54),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      ),
                      // Text("Wah Cantt",
                      //     style: TextStyle(
                      //         fontSize: 9, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.height45,
                      height: Dimensions.height45,
                      child: Icon(FluentSystemIcons.ic_fluent_search_regular,
                          color: Colors.white, size: Dimensions.iconSize24),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15),
                        color: AppColor.mainColor,
                      ),

                      // Icon:Icon(Icons.search_off),
                    ),
                  ),
                ]),
          )),
      //showing body
      Expanded(
        child: SingleChildScrollView(
          child: FoodPageBody(),
        ),
      ),
    ]));
  }
}
