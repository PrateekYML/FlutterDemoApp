import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_navigation/FriendList.dart';
import 'package:simple_navigation/UserProfile.dart';
import 'Gallery.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  Widget _activePage = UserProfile(
      firstName: "Sujay",
      lastName: "Sh",
      gender: "Male",
      dob: "18-07-1999",
      email: "sujay.shenoy@ymedialabs.com");
  Widget _appBarTitle = Text("Profile");

  void _onNavChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    switch (_selectedIndex) {
      case 0:
        {
          _activePage = UserProfile(
              firstName: "Sujay",
              lastName: "Sh",
              gender: "Male",
              dob: "18-07-1999",
              email: "sujay.shenoy@ymedialabs.com");
          _appBarTitle = Text("Profile");
          break;
        }
      case 1:
        {
          _activePage = Gallery();
          _appBarTitle = Text("Gallery");
          break;
        }
      case 2:
        {
          _activePage = FriendList();
          _appBarTitle = Text("Friends");
          break;
        }
    }

    return Scaffold(
      appBar: AppBar(
        title: _appBarTitle,
        leading: BackButton(
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [DrawerHeader(child: Text("Nav Drawer"))],
        ),
      ),
      body: _activePage,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_sharp), label: 'Profile'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "asset/images/ic_image.svg",
                width: 20,
                height: 20,
                colorFilter: ColorFilter.mode(Colors.black45, BlendMode.srcIn),
              ),
              activeIcon: SvgPicture.asset(
                "asset/images/ic_image.svg",
                width: 20,
                height: 20,
                colorFilter:
                    ColorFilter.mode(Colors.indigoAccent, BlendMode.srcIn),
              ),
              label: 'Gallery'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "asset/images/ic_friends.svg",
                width: 20,
                height: 20,
                colorFilter: ColorFilter.mode(Colors.black45, BlendMode.srcIn),
              ),
              activeIcon: SvgPicture.asset(
                "asset/images/ic_friends.svg",
                width: 20,
                height: 20,
                colorFilter:
                    ColorFilter.mode(Colors.indigoAccent, BlendMode.srcIn),
              ),
              label: 'Friends'),
        ],
        selectedItemColor: Colors.indigoAccent,
        currentIndex: _selectedIndex,
        onTap: _onNavChange,
      ),
    );
  }
}
