import 'package:flutter/material.dart';


class SignupViewController extends StatefulWidget {
  const SignupViewController({Key? key}) : super(key: key);
  @override
  State<SignupViewController> createState() =>  SignupViewControllerState();
}

    int _selected = 0;

class SignupViewControllerState extends State<SignupViewController>  {

void onChanged(int value) {
    setState((){
      _selected = value;
    });

    print('Value = $value');
  }
  
  @override
  Widget build(BuildContext context) => Scaffold(
    
    
    
    //Grid, tab bar, pass data from sig up
     appBar: AppBar(
        title: Text('Flutter Demo Navigation'),
      ),
    backgroundColor: Color.fromARGB(255, 246, 246, 241),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        Navigator.push(context, new MaterialPageRoute(
          builder: (context) => SignupViewController()
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
      constraints: BoxConstraints.expand(),

      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Y Media Labs',
                  style: TextStyle(
                      color: Color.fromARGB(255, 1, 10, 18),
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'First Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Last Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),  
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            Container(

              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password',
                ),
              ),
            ),
            Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child:            Row(
              children: [
               const Text(
            'Male',
      style: TextStyle(fontSize: 17.0),
    ),
            Radio(
            value: 1,
            groupValue: _selected,
           onChanged: (val) {
        setState(() {
        
        
        });
        
      },
      
    ),
              const Text(
            'Female',
      style: TextStyle(fontSize: 17.0),
    ),
    Radio(
      value: 2,
      groupValue: 2,
      onChanged: (val) {
        setState(() {
        
        
        });
        
      },
      
    ),
    // more widgets ...
  ]
            ),

            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Submit'),
                  onPressed: () {
     
                  },
                )
            ),
          ],
        )
    ),
  );
}