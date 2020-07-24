import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: View()
        )
    );
  }
}

class View extends StatefulWidget {
  ViewState createState() => ViewState();
}

class ViewState extends State{
  Color colorCode = Colors.black54;
  final Random random = Random();
  generateRandomColor(){
    Color tmpColor = Color.fromARGB(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Container(
          height: MediaQuery.of(context).copyWith().size.height,
          width: MediaQuery.of(context).copyWith().size.width,
          child:  RaisedButton(
            onPressed: () => generateRandomColor(),
            child: Text('Hey there',
                style: TextStyle(  fontSize: 26, )
            ),
            color: generateRandomColor(),
          ),
        ),
      ),
    );
  }
}