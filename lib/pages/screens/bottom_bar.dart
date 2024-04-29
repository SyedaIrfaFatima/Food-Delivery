import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:food_delivery/pages/home/main_food_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selecteIndex = 0;
  final List<Widget> _wigitoption = <Widget>[
    MainFoodPage(),
    const Text("food"),
    const Text("order"),
    const Text("orderr"),
  ];

  void onTappedIndex(int index) {
    setState(() {
      selecteIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _wigitoption[selecteIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: onTappedIndex,
            elevation: 10,
            selectedItemColor: Colors.blueGrey,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: selecteIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  FluentSystemIcons.ic_fluent_home_regular,
                ),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: "home",
              ),
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                  activeIcon:
                      Icon(FluentSystemIcons.ic_fluent_access_time_filled),
                  label: "search"),
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                  activeIcon:
                      Icon(FluentSystemIcons.ic_fluent_access_time_filled),
                  label: "searchh"),
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                  activeIcon:
                      Icon(FluentSystemIcons.ic_fluent_access_time_filled),
                  label: "seracgg"),
            ]));
  }
}
