import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class SignupViewController extends StatefulWidget {
  const SignupViewController({Key? key}) : super(key: key);

  @override
  State<SignupViewController> createState() => SignupViewControllerState();
}

class SignupViewControllerState extends State<SignupViewController> {
  String _firstName = "";
  String _lastName = "";
  String _email = "";
  String _gender = "";

  @override
  Widget build(BuildContext context) => Container(
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
              onChanged: (val) {
                _firstName = val;
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Last Name',
              ),
              onChanged: (val) {
                _lastName = val;
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
              onChanged: (val) {
                _email = val;
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Confirm Password',
              ),
            ),
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Row(children: [
              const Text("Gender: "),
              Radio(
                value: "Male",
                groupValue: _gender,
                onChanged: (val) {
                  setState(() {
                    _gender = "Male";
                  });
                },
              ),
              const Text(
                'Male',
                style: TextStyle(fontSize: 17.0),
              ),
              Radio(
                value: "Female",
                groupValue: _gender,
                onChanged: (val) {
                  setState(() {
                    _gender = "Female";
                  });
                },
              ),
              const Text(
                'Female',
                style: TextStyle(fontSize: 17.0),
              ),
              // more widgets ...
            ]),
          ),
          Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text('Submit'),
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            firstName: _firstName,
                            lastName: _lastName,
                            gender: _gender,
                            dob: "<DOB>",
                            email: _email,
                          )));
                },
              )),
        ],
      ));
}
