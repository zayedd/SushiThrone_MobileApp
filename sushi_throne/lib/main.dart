import 'package:flutter/material.dart';
import 'package:sushi_throne/screens/homepage.dart';
// import 'package:sushi_throne/screens/login.dart';
import 'package:sushi_throne/screens/admin/admin_home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SS',
      theme: ThemeData(
     
        primarySwatch: Colors.blue,
      ),
      home: AdminHome(),
      
    );
  }
}