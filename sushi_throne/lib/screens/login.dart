import 'package:flutter/material.dart';
import 'package:sushi_throne/screens/homepage.dart';
import 'package:sushi_throne/widgets/appbar.dart';
import '/screens/register.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     const appTitle = 'Foodies';
//     return MaterialApp(
//       title: appTitle,
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.red,
//           centerTitle: true,
//           title: const Text(appTitle),
//         ),
//         body: const Login(),
//       ),
//     );
//   }
// }

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[100],
        iconTheme: IconThemeData(
          color: Colors.black,
      ),
      elevation: 0,
      actions: <Widget>[
      //   IconButton(onPressed:() { Navigator.push(context, MaterialPageRoute(
      //                                   builder: (context) =>  CartView()));} , icon: Icon(Icons.shopping_cart))
       ],
    ),
      backgroundColor: Color(0xffe5e1d5),
      body: SafeArea(child: Padding(padding: EdgeInsets.all(16),
      child: Column(
      children: <Widget>[
        // Image(
        //   image: AssetImage('assets/images/su.jpg'),
        //   width: 100,
        //   height: 100,
        // ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Material(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Mail',
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Material(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Password',
              ),
            ),
          ),
        ),
        ElevatedButton(
          child: Text("Login"),
           onPressed: () {
             Navigator.push(context, MaterialPageRoute(
             builder: (context) =>  HomePage()));
                     },
        ),
        ElevatedButton(
            child: Text("Want an account ?"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Register()),
              );
            })
         ],
        )
       )
      )
    );
  }
}
