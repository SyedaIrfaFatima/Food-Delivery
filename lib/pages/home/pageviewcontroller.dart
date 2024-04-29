import 'package:flutter/material.dart';

class PageViewExample extends StatefulWidget {
  const PageViewExample({Key? key}) : super(key: key);

  @override
  State<PageViewExample> createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample> {
  final PageController _pageController = PageController(viewportFraction: 0.85);
  var cuurentvalue = 0.0;

  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        cuurentvalue = _pageController.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageView Example'),
      ),
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          _buildPage(Colors.blue, "Page 1"),
          _buildPage(Colors.green, "Page 2"),
          _buildPage(Colors.purple, "Page 3"),
        ],
      ),
    );
  }

  Widget _buildPage(Color color, String text) {
    return Container(
      color: color,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 32, color: Colors.white),
        ),
      ),
    );
  }
}
