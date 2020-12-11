import 'package:flutter/material.dart';
import 'package:firstApp/src/widgets/drawer_menu.dart';

class LauncherPage extends StatelessWidget {
  const LauncherPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First App"),
      ),
      drawer: new DrawerMenu(),
      body: new ListChoices(),
    );
  }
}
