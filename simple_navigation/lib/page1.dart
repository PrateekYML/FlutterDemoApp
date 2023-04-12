import 'package:flutter/material.dart';
import 'package:simple_navigation/page2.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
     appBar: AppBar(
        title: Text('Flutter Demo Navigation'),
      ),
    backgroundColor: Color.fromARGB(255, 243, 212, 33),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        Navigator.push(context, new MaterialPageRoute(
          builder: (context) => Page2()
        ));
      },
      tooltip:'Next Page',
      child: IconTheme(
        data: new IconThemeData(
          color: Colors.blue,
        ),
        child: new Icon(Icons.arrow_forward),
      ),
      backgroundColor: Colors.white,
    ),
    body: Container(
      height: 200,
      alignment: Alignment.center,
      padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[TextField(obscureText: true, decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Enter username')),TextField(obscureText: true, decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Enter username')),]
     
        )
    ),
  );
}

