import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stack Ex'),
        ),
        body: bodyWidget());
  }
}

// ignore: camel_case_types
class bodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0.6, 0.6),
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/jpg/pic1.jpg'),
          radius: 100.0,

        ),
        Container(
            decoration: BoxDecoration(
              color: Colors.black45,
            ),
            child: Text(
              'Hot Dog',
              
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ))
      ],
    );
  }
}
