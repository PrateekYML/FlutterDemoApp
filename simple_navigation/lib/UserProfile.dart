import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String gender;
  final String dob;
  final String email;

  const UserProfile(
      {Key? key,
      required this.firstName,
      required this.lastName,
      required this.gender,
      required this.dob,
      required this.email})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 24),
        Center(
            child: CircleAvatar(
                radius: 75,
                backgroundImage:
                    AssetImage("asset/images/avatar/ic_avatar_1.jpg"))),
        ProfileInfoField(keyName: "First Name", value: firstName),
        ProfileInfoField(keyName: "Last Name", value: lastName),
        ProfileInfoField(keyName: "Gender", value: gender),
        ProfileInfoField(keyName: "Date of birth", value: dob),
        ProfileInfoField(keyName: "Email", value: email)
      ]
          .map((widget) => Padding(
                padding: EdgeInsets.all(8),
                child: widget,
              ))
          .toList(),
    );
  }
}

class ProfileInfoField extends StatelessWidget {
  final String keyName;
  final String value;

  const ProfileInfoField({Key? key, required this.keyName, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(keyName),
        SizedBox(height: 4),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.black12),
          child: SizedBox(
            width: 230,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
              child: Align(alignment: Alignment.centerLeft, child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(value),
              )),
            ),
          ),
        )
      ],
    );
  }
}
