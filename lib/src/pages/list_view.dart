import 'package:firstApp/src/widgets/drawer_menu.dart';
import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListView Ex'),
        ),
        drawer: new DrawerMenu(),
        body: bodyWidget());
  }
}

// ignore: camel_case_types
class bodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: list(100),
      ),
    );
  }
}

List<Widget> list(int count){
return List<Widget>.generate(count, (int index) => ListTile(
  title: Text("Title ",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
  subtitle: Text("Subtitle"),
  leading: Icon(
    Icons.theaters,
    color: Colors.lightBlue,
  ),
));
}
