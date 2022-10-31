import 'package:flutter/material.dart';
import 'package:loha/modules/main_page/test_page_controller.dart';
// import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => TestPageState();
}

class TestPageState extends State<TestPage> {
  TestPageController _controller = TestPageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Let\'s test'),
      ),
      body: _controller.currentBody,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarms_sharp), label: "Test"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "Test"),
          BottomNavigationBarItem(
              icon: Icon(Icons.accessibility), label: "Test"),
        ],
        currentIndex: _controller.currentIndex,
        onTap: _controller.onItemTapped,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _controller.attach(this);
  }
}
