import 'package:flutter/material.dart';
import 'package:food_delivery/utils/color.dart';
import 'package:food_delivery/utils/dimention.dart';
import 'package:food_delivery/widget/big_text.dart';
import 'package:food_delivery/widget/expendable_text_widget.dart';

import '../../widget/app_icon.dart';

class RecommendFoodDetail extends StatelessWidget {
  const RecommendFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              toolbarHeight: 70,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.clear),
                  AppIcon(icon: Icons.shopping_cart_outlined)
                ],
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(20),
                child: Container(
                  child: Center(
                      child: BigText(size: Dimensions.font26, text: "Dessert")),
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius20),
                        topRight: Radius.circular(Dimensions.radius20),
                      )),
                ),
              ),
              pinned: true,
              backgroundColor: AppColor.greenColor,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/images/dessert.jpg",
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              )),
          SliverToBoxAdapter(
            child: Column(children: [
              Container(
                child: TextExtend(
                    text:
                        "Dessert are delightful ,mostly people are eating sweet after meal and enjoy ,Whether enjoyed alone as a moment of indulgence or shared with loved ones to mark a celebration, desserts hold a special place in the culinary world, bringing people together and adding a touch of sweetness to life's moments,Dessert are delightful ,mostly people are eating sweet after meal and enjoy ,Whether enjoyed alone as a moment of indulgence or shared with loved ones to mark a celebration, desserts hold a special place in the culinary world, bringing people together and adding a touch of sweetness to life's momentsDessert are delightful ,mostly people are eating sweet after meal and enjoy ,Whether enjoyed alone as a moment of indulgence or shared with loved ones to mark a celebration, desserts hold a special place in the culinary world, bringing people together and adding a touch of sweetness to life's momentsDessert are delightful ,mostly people are eating sweet after meal and enjoy ,Whether enjoyed alone as a moment of indulgence or shared with loved ones to mark a celebration, desserts hold a special place in the culinary world, bringing people together and adding a touch of sweetness to life's momentsDessert are delightful ,mostly people are eating sweet after meal and enjoy ,Whether enjoyed alone as a moment of indulgence or shared with loved ones to mark a celebration, desserts hold a special place in the culinary world, bringing people together and adding a touch of sweetness to life's momentsDessert are delightful ,mostly people are eating sweet after meal and enjoy ,Whether enjoyed alone as a moment of indulgence or shared with loved ones to mark a celebration, desserts hold a special place in the culinary world, bringing people together and adding a touch of sweetness to life's momentsDessert are delightful ,mostly people are eating sweet after meal and enjoy ,Whether enjoyed alone as a moment of indulgence or shared with loved ones to mark a celebration, desserts hold a special place in the culinary world, bringing people together and adding a touch of sweetness to life's momentsDessert are delightful ,mostly people are eating sweet after meal and enjoy ,Whether enjoyed alone as a moment of indulgence or shared with loved ones to mark a celebration, desserts hold a special place in the culinary world, bringing people together and adding a touch of sweetness to life's momentsDessert are delightful ,mostly people are eating sweet after meal and enjoy ,Whether enjoyed alone as a moment of indulgence or shared with loved ones to mark a celebration, desserts hold a special place in the culinary world, bringing people together and adding a touch of sweetness to life's momentsDessert are delightful ,mostly people are eating sweet after meal and enjoy ,Whether enjoyed alone as a moment of indulgence or shared with loved ones to mark a celebration, desserts hold a special place in the culinary world, bringing people together and adding a touch of sweetness to life's momentsDessert are delightful ,mostly people are eating sweet after meal and enjoy ,Whether enjoyed alone as a moment of indulgence or shared with loved ones to mark a celebration, desserts hold a special place in the culinary world, bringing people together and adding a touch of sweetness to life's momentsDessert are delightful ,mostly people are eating sweet after meal and enjoy ,Whether enjoyed alone as a moment of indulgence or shared with loved ones to mark a celebration, desserts hold a special place in the culinary world, bringing people together and adding a touch of sweetness to life's momentsDessert are delightful ,mostly people are eating sweet after meal and enjoy ,Whether enjoyed alone as a moment of indulgence or shared with loved ones to mark a celebration, desserts hold a special place in the culinary world, bringing people together and adding a touch of sweetness to life's momentsDessert are delightful ,mostly people are eating sweet after meal and enjoy ,Whether enjoyed alone as a moment of indulgence or shared with loved ones to mark a celebration, desserts hold a special place in the culinary world, bringing people together and adding a touch of sweetness to life's momentsDessert are delightful ,mostly people are eating sweet after meal and enjoy ,Whether enjoyed alone as a moment of indulgence or shared with loved ones to mark a celebration, desserts hold a special place in the culinary world, bringing people together and adding a touch of sweetness to life's momentsDessert are delightful ,mostly people are eating sweet after meal and enjoy ,Whether enjoyed alone as a moment of indulgence or shared with loved ones to mark a celebration, desserts hold a special place in the culinary world, bringing people together and adding a touch of sweetness to life's momentsDessert are delightful ,mostly people are eating sweet after meal and enjoy ,Whether enjoyed alone as a moment of indulgence or shared with loved ones to mark a celebration, desserts hold a special place in the culinary world, bringing people together and adding a touch of sweetness to life's moments"),
                margin: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                ),
              ),
            ]),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20 * 2.5,
                right: Dimensions.width20 * 2.5,
                top: Dimensions.height10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(
                      iconSize: Dimensions.iconSize24,
                      iconColor: Colors.white,
                      backgroundColor: AppColor.mainColor,
                      icon: Icons.remove),
                  BigText(
                    text: "\$12.88" + " X " + "0",
                    color: AppColor.mainColor,
                    size: Dimensions.font26,
                  ),
                  AppIcon(
                      iconSize: Dimensions.iconSize24,
                      iconColor: Colors.white,
                      backgroundColor: AppColor.mainColor,
                      icon: Icons.add),
                ]),
          ),
          Container(
              height: Dimensions.bottomheight,
              padding: EdgeInsets.only(
                  top: Dimensions.height30,
                  bottom: Dimensions.height30,
                  left: Dimensions.width20),
              decoration: BoxDecoration(
                  color: AppColor.buttonBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20 * 2),
                    topRight: Radius.circular(Dimensions.radius20 * 2),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        top: Dimensions.height20,
                        bottom: Dimensions.height20,
                        left: Dimensions.width20,
                        right: Dimensions.width20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white,
                    ),
                    child: Icon(Icons.favorite, color: AppColor.mainColor),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        top: Dimensions.height20,
                        bottom: Dimensions.height20,
                        left: Dimensions.width20,
                        right: Dimensions.width20),
                    child:
                        BigText(text: "\$10 |Add to cart", color: Colors.white),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: AppColor.mainColor,
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
