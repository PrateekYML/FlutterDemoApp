import 'package:flutter/material.dart';
import 'package:simple_navigation/DashboardViewController.dart';


class HomeViewController extends StatefulWidget {
  const HomeViewController({Key? key}) : super(key: key);
  @override
  State<HomeViewController> createState() =>  HomeViewControllerState();
}

class HomeViewControllerState extends State<HomeViewController>  {
  @override
  Widget build(BuildContext context) => Scaffold(
     appBar: AppBar(
        title: Text('Flutter Demo Navigation'),
      ),
    backgroundColor: Color.fromARGB(255, 243, 212, 33),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        Navigator.push(context, new MaterialPageRoute(
          builder: (context) => DashboardViewController()
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
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'First Republic Bank',
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
              },
              child: const Text('Forgot Password?',),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
         Navigator.push(context, new MaterialPageRoute(
          builder: (context) => DashboardViewController()
        ));
                  },
                )
            ),
            Row(
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    
            final snackBar = SnackBar(
              content: const Text('Hey Snacky !!!'),
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
        )
    ),
  );
}

