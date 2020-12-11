import 'package:firstApp/src/widgets/drawer_menu.dart';
import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Controller Layout'),
        ),
        drawer: new DrawerMenu(),
        body: body_widget());
  }
}

// ignore: camel_case_types
class body_widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white60),
      child: Column(
        children: <Widget>[
          Row(children: [
            Expanded(
              child: Container(
                // Container image 1
                decoration: BoxDecoration(
                  border: Border.all(width: 4.0, color: Colors.black38),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(8.0)),
                ),
                margin: const EdgeInsets.all(15.0),
                child: Image.asset('assets/images/jpg/pic1.jpg'),
              ),
            ),
            Expanded(
              child: Container(
                // Container image 1
                decoration: BoxDecoration(
                  border: Border.all(width: 4.0, color: Colors.black38),
                  borderRadius:
                  const BorderRadius.all(const Radius.circular(8.0)),
                ),
                margin: const EdgeInsets.all(15.0),
                child: Image.asset('assets/images/jpg/pic2.jpg'),
              ),
            ),
          ]),
          Row(children: [
            Expanded(
              child: Container(
                // Container image 1
                decoration: BoxDecoration(
                  border: Border.all(width: 4.0, color: Colors.black38),
                  borderRadius:
                  const BorderRadius.all(const Radius.circular(8.0)),
                ),
                margin: const EdgeInsets.all(15.0),
                child: Image.asset('assets/images/jpg/pic1.jpg'),
              ),
            ),
            Expanded(
              child: Container(
                // Container image 1
                decoration: BoxDecoration(
                  border: Border.all(width: 4.0, color: Colors.black38),
                  borderRadius:
                  const BorderRadius.all(const Radius.circular(8.0)),
                ),
                margin: const EdgeInsets.all(15.0),
                child: Image.asset('assets/images/jpg/pic2.jpg'),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
