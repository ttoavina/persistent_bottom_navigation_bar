import 'package:flutter/cupertino.dart';
import 'package:loha/modules/main_page/main_page_view.dart';

class TestPageController {
  late TestPageState _view;
  int currentIndex = 1;

  Widget currentBody = screens[1];

  TestPageController() {
    currentBody = screens[currentIndex];
  }

  void attach(TestPageState view) {
    this._view = view;
  }

  void onItemTapped(int index) {
    currentIndex = index;
    currentBody = screens[index];
    _view.setState(() {});
  }
}

List<Widget> screens = [
  Center(
    child: Text("Alarm selected!"),
  ),
  Center(
    child: Text("Ice selected!"),
  ),
  Center(
    child: Text("Person selected!"),
  ),
];
