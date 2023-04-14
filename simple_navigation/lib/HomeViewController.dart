import 'package:flutter/material.dart';
import 'package:simple_navigation/SignupViewController.dart';
import 'package:simple_navigation/HomeScreen.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeViewController extends StatefulWidget {
  const HomeViewController({Key? key}) : super(key: key);

  @override
  State<HomeViewController> createState() => HomeViewControllerState();
}

class HomeViewControllerState extends State<HomeViewController> {
  String _usernameInput = "";

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
                'Sign in',
                style: TextStyle(fontSize: 20),
              )),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User Name',
              ),
              onChanged: (input) {
                _usernameInput = input;
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              //forgot password screen
              showAlertDialog(context);
              Fluttertoast.showToast(msg: "Forget password clicked !!");
            },
            child: const Text(
              'Forgot Password?',
            ),
          ),
          Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text('Login'),
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            firstName: _usernameInput,
                            lastName: "<LastName>",
                            gender: "<Gender>",
                            dob: "<DOB>",
                            email: "<Email>",
                          )));
                },
              )),
          Row(
            children: <Widget>[
              const Text('Does not have account?'),
              TextButton(
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 16),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => SignupViewController()));
                  final snackBar = SnackBar(
                    content: const Text('Hey You are on Signup Page !!!'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        // Some code to undo the change.
                      },
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ));
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = ElevatedButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Forget Password"),
    content: Text("Please reset your password !!"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}