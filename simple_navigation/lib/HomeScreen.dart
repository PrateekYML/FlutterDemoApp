import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_navigation/FriendList.dart';
import 'package:simple_navigation/UserProfile.dart';
import 'Gallery.dart';

class HomeScreen extends StatefulWidget {
  final String firstName;
  final String lastName;
  final String gender;
  final String dob;
  final String email;

  const HomeScreen(
      {Key? key,
      required this.firstName,
      required this.lastName,
      required this.gender,
      required this.dob,
      required this.email})
      : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int _selectedIndex;
  late Widget _activePage;
  late Widget _appBarTitle;

  @override
  void initState() {
    _selectedIndex = 0;
    _activePage = UserProfile(
        firstName: widget.firstName,
        lastName: widget.lastName,
        gender: widget.gender,
        dob: widget.dob,
        email: widget.email);
    _appBarTitle = Text("Profile");

    super.initState();
  }

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
              firstName: widget.firstName,
              lastName: widget.lastName,
              gender: widget.gender,
              dob: widget.dob,
              email: widget.email);
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
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Nav Drawer")),
            ListTile(
              leading: Icon(Icons.account_circle_sharp),
              title: Text("Profile"),
              selected: _selectedIndex == 0,
              onTap: () {
                Navigator.pop(context);
                _onNavChange(0);
              },
            ),
            ListTile(
              leading: (() {
                if (_selectedIndex == 1)
                  return SvgPicture.asset(
                    "asset/images/ic_image.svg",
                    width: 20,
                    height: 20,
                    colorFilter:
                        ColorFilter.mode(Colors.indigoAccent, BlendMode.srcIn),
                  );
                else
                  return SvgPicture.asset(
                    "asset/images/ic_image.svg",
                    width: 20,
                    height: 20,
                    colorFilter:
                        ColorFilter.mode(Colors.black45, BlendMode.srcIn),
                  );
              }()),
              title: Text("Gallery"),
              selected: _selectedIndex == 1,
              onTap: () {
                Navigator.pop(context);
                _onNavChange(1);
              },
            ),
            ListTile(
              leading: (() {
                if (_selectedIndex == 2)
                  return SvgPicture.asset(
                    "asset/images/ic_friends.svg",
                    width: 20,
                    height: 20,
                    colorFilter:
                        ColorFilter.mode(Colors.indigoAccent, BlendMode.srcIn),
                  );
                else
                  return SvgPicture.asset(
                    "asset/images/ic_friends.svg",
                    width: 20,
                    height: 20,
                    colorFilter:
                        ColorFilter.mode(Colors.black45, BlendMode.srcIn),
                  );
              }()),
              title: Text("Friends"),
              selected: _selectedIndex == 2,
              onTap: () {
                Navigator.pop(context);
                _onNavChange(2);
              },
            )
          ],
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
