import 'package:flutter/material.dart';
import 'package:simple_navigation/HomeViewController.dart';

import 'SignupViewController.dart';

class OnBoardingPager extends StatelessWidget {
  OnBoardingPager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo Navigation'),
        ),
        body: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Container(
                      color: Colors.black45,
                      child: TextButton(
                          onPressed: () {
                            controller.animateToPage(0,
                                duration: Duration(milliseconds: 5),
                                curve: Curves.linear);
                          },
                          child: Text("Login", style: TextStyle(color: Colors.white),)),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Container(
                      color: Colors.black45,
                      child: TextButton(
                          onPressed: () {
                            controller.animateToPage(1,
                                duration: Duration(milliseconds: 5),
                                curve: Curves.linear);
                          },
                          child: Text("Registration", style: TextStyle(color: Colors.white),)),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: PageView(
                controller: controller,
                children: [HomeViewController(), SignupViewController()],
              ),
            ),
          ],
        ));
  }
}
