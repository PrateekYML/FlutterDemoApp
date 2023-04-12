import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Color.fromARGB(255, 7, 123, 255),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        Navigator.pop(context);
      },
      tooltip:'Next Page',
      child: IconTheme(
        data: new IconThemeData(
          color: Colors.blue,
        ),
        child: new Icon(Icons.arrow_back),
      ),
      backgroundColor: Colors.white,
    ),
    body: Container(
      child: Center(
        child: Text(
            'Second Page',
            style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold, color: Colors.white ),
        ),
      )
    ),
  );
}

