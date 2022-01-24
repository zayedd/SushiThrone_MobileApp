import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sushi_throne/screens/homepage.dart';
import 'package:sushi_throne/screens/login.dart';
import 'package:sushi_throne/screens/map.dart';
import 'package:sushi_throne/screens/register.dart';

// import 'package:sushi_throne/screens/login.dart';
import 'package:sushi_throne/screens/admin/adminn.dart';
// //import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      home: Login(),
    );
  }
}
