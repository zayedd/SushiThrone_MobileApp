import 'package:flutter/material.dart';
import 'package:sushi_throne/screens/homepage.dart';
import 'package:sushi_throne/widgets/appbar.dart';
import '/screens/register.dart';
import '/screens/admin/admin_home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  bool isAdmin = false;
  // void adminv(value) {
  //   if (value == "admin") {}
  //   Navigator.push(
  //       context, MaterialPageRoute(builder: (context) => DashboardPage()));
  // }
  // // }

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
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: <Widget>[
                    Image(
                      image: AssetImage('images/logo.png'),
                      width: 200,
                      height: 150,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      child: Material(
                        child: Form(
                          key: formkey,
                          child: TextFormField(
                            // validator: adminv(),
                            validator: (value) {
                              if (value == "admin") {
                                isAdmin = true;
                              }
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Email',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      child: Material(
                        child: Form(
                            child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Password',
                          ),
                        )),
                      ),
                    ),
                    ElevatedButton(
                      child: Text("Login"),
                      onPressed: () {
                        if (isAdmin) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AdminHome()));
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        }
                      },
                    ),
                    ElevatedButton(
                        child: Text("Want an account ?"),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Register()),
                          );
                        })
                  ],
                ))));
  }
}
