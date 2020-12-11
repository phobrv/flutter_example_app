import 'package:firstApp/src/widgets/drawer_menu.dart';
import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Grid View Example'),
        ),
        drawer: new DrawerMenu(),
        body: body_widget());
  }
}

// ignore: camel_case_types
class body_widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.extent(
        maxCrossAxisExtent: 150,
        padding: const EdgeInsets.all((4.0)),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children:_ListImage(30)
      )
    );
  }
}

// ignore: non_constant_identifier_names
List<Container> _ListImage(int count){
  return List<Container>.generate(
      count,
          (int index) => Container(
        decoration: BoxDecoration(color: Colors.black12),
        height: 150,
        child: Image.asset('assets/images/jpg/pic${index + 1}.jpg',
            height: 150, fit: BoxFit.fill),
      )
  );
}
