import 'package:flutter/material.dart';
import 'package:sushi_throne/models/user_model.dart';
import 'package:sushi_throne/widgets/drawer.dart';

class EditProfile extends StatefulWidget {

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile>{
    @override
  Widget listTile(IconData icon, String title) {
    return Column(
      children: [
        Divider(
          height: 1,
        ),
        ListTile(
          leading: Icon(icon),
          title: Text(title),
          trailing: Icon(Icons.arrow_forward_ios),
        )
      ],
    );
}

  @override
  Widget build(BuildContext context) {
    
  }