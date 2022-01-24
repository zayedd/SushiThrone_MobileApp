import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sushi_throne/screens/login.dart';
import 'package:sushi_throne/components/loading.dart';
import 'package:sushi_throne/screens/homepage.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var myusername, mypassword, myemail, myphone, myaddress;
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();

  signup() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      formdata.save();

      try {
        showLoading(context);
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: myemail, password: mypassword);
        return userCredential;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          Navigator.of(context).pop();
          // AwesomeDialog(
          //     context: context,
          //     title: "Error",
          //     body: Text("Password is too weak"))
          //   ..show();
        } else if (e.code == 'email-already-in-use') {
          Navigator.of(context).pop();
          // AwesomeDialog(
          //     context: context,
          //     title: "Error",
          //     body: Text("The account already exists for that email"))
          //   ..show();
        }
      } catch (e) {
        print(e);
      }
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Register';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[100],
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          elevation: 0,
          actions: <Widget>[],
        ),
        body: ListView(
          children: [
            SizedBox(height: 100),
            Center(child: Image.asset("images/logo.png")),
            Container(
              padding: EdgeInsets.all(20),
              child: Form(
                  key: formstate,
                  child: Column(
                    children: [
                      TextFormField(
                        onSaved: (val) {
                          myusername = val;
                        },
                        validator: (val) {
                          if (val!.length > 100) {
                            return "username can't to be larger than 100 letter";
                          }
                          if (val!.length < 2) {
                            return "username can't to be less than 2 letter";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            hintText: "username",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1))),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        onSaved: (val) {
                          myemail = val;
                        },
                        validator: (val) {
                          if (val!.length > 100) {
                            return "Email can't to be larger than 100 letter";
                          }
                          if (val!.length < 2) {
                            return "Email can't to be less than 2 letter";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            hintText: "email",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1))),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        onSaved: (val) {
                          mypassword = val;
                        },
                        validator: (val) {
                          if (val!.length > 100) {
                            return "Password can't to be larger than 100 letter";
                          }
                          if (val.length < 4) {
                            return "Password can't to be less than 4 letter";
                          }
                          return null;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            hintText: "password",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1))),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        onSaved: (val) {
                          myphone = val;
                        },
                        validator: (val) {
                          if (val!.length > 100) {
                            return "Phone Number can't to be larger than 100 numbers";
                          }
                          if (val!.length < 11) {
                            return "Phone Number can't to be less than 11 numbers";
                          }
                          return null;
                        },

                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.phone_android),
                            hintText: "Phone Number",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1))),
                        // obscureText: true,
                        // decoration: InputDecoration(
                        //     prefixIcon: Icon(Icons.pin_drop),
                        //     hintText: "address",
                        //     border: OutlineInputBorder(
                        //         borderSide: BorderSide(width: 1))),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        onSaved: (val) {
                          myaddress = val;
                        },
                        validator: (val) {
                          if (val!.length > 100) {
                            return "Address can't to be larger than 11 characters";
                          }
                          if (val!.length < 11) {
                            return "Address can't to be less than 11 charcters";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.pin_drop_outlined),
                            hintText: "Address",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1))),
                        // obscureText: true,
                        // decoration: InputDecoration(
                        //     prefixIcon: Icon(Icons.mobile_friendly_outlined),
                        //     hintText: "Phone Number",
                        //     border: OutlineInputBorder(
                        //         borderSide: BorderSide(width: 1))),
                      ),
                      Container(
                          margin: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Text("if you already have an Account "),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Login()));
                                },
                                child: Text(
                                  "Click Here",
                                  style: TextStyle(color: Colors.blue),
                                ),
                              )
                            ],
                          )),
                      Container(
                          // ignore: deprecated_member_use
                          child: RaisedButton(
                        textColor: Colors.white,
                        onPressed: () async {
                          UserCredential response = await signup();
                          print("===================");
                          if (response != null) {
                            await FirebaseFirestore.instance
                                .collection("users")
                                .add({
                              "username": myusername,
                              "email": myemail,
                              "phonenum": myphone,
                              "address": myaddress
                            });
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Login()));

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          } else {
                            print("Sign Up Failed");
                          }
                          print("===================");
                        },
                        child: Text(
                          "Sign Up",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ))
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}

// class MyCustomForm extends StatelessWidget {
//   const MyCustomForm({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: <Widget>[
//         // Image(
//         //   image: AssetImage('assets/images/su.jpg'),
//         //   width: 100,
//         //   height: 100,
//         // ),
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
//           child: TextFormField(
//             onSaved: (val){
//               username = val;
//             },
//             decoration: InputDecoration(
//               border: OutlineInputBorder(),
//               hintText: 'Name',
//             ),
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
//           child: TextField(
//             decoration: InputDecoration(
//               border: OutlineInputBorder(),
//               hintText: 'Email',
//             ),
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
//           child: TextField(
//             decoration: InputDecoration(
//               border: OutlineInputBorder(),
//               hintText: 'Password',
//             ),
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
//           child: TextField(
//             decoration: InputDecoration(
//               border: OutlineInputBorder(),
//               hintText: 'Phone',
//             ),
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
//           child: TextField(
//             decoration: InputDecoration(
//               border: OutlineInputBorder(),
//               hintText: 'Address',
//             ),
//           ),
//         ),
//         ElevatedButton(
//           child: Text("Submit"),
//           onPressed: null,
//         )
//       ],
//     );
//   }
// }
