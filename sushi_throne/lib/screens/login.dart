import 'package:flutter/material.dart';
import 'package:sushi_throne/screens/admin/adminn.dart';
import 'package:sushi_throne/screens/homepage.dart';
import 'package:sushi_throne/widgets/appbar.dart';
import '/screens/register.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:sushi_throne/components/loading.dart';
//import 'package:awesome_dialog/awesome_dialog.dart';
//import 'package:sushi_throne/components/loading.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  var email, password;
  late UserCredential userCredential;

  GlobalKey<FormState> formstate = new GlobalKey<FormState>();

  signIn() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      formdata.save();
      try {
<<<<<<< Updated upstream
        //showLoading(context);
         userCredential = await FirebaseAuth.instance
=======
        showLoading(context);
        UserCredential userCredential = await FirebaseAuth.instance
>>>>>>> Stashed changes
            .signInWithEmailAndPassword(email: email, password: password);
        return userCredential;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          Navigator.of(context).pop();
          AwesomeDialog(
              context: context,
              title: "Error",
              body: Text("No user found for that email"))
            ..show();
        } else if (e.code == 'wrong-password') {
          Navigator.of(context).pop();
          AwesomeDialog(
              context: context,
              title: "Error",
              body: Text("Wrong password provided for that user"))
            ..show();
        }
      }
    } else {
      print("Not Vaild");
    }
  }

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
      //
      body: ListView(
        children: [
          Center(child: Image.asset("images/logo.png")),
          Container(
            padding: EdgeInsets.all(20),
            child: Form(
                key: formstate,
                child: Column(
                  children: [
                    TextFormField(
                      onSaved: (val) {
                        email = val;
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
                          hintText: "Email",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1))),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      onSaved: (val) {
                        password = val;
                      },
                      validator: (val) {
                        if (val!.length > 100) {
                          return "Password can't to be larger than 100 letter";
                        }
                        if (val!.length < 8) {
                          return "Password can't to be less than 8 letter";
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
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Text("if you have no accout "),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Register()));
                              },
                              child: Text(
                                "Click Here",
                                style: TextStyle(color: Colors.blue),
                              ),
                            )
                          ],
                        )),
                    Container(
                        child: RaisedButton(
                      textColor: Colors.white,
                      onPressed: () async {
                        var user = await signIn();
                        if (userCredential.user!.uid =='wDlkc9qzmpa9SfO6lqiYrIHxkqD2' ) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Admin()));
                        }
                        else if (user != null) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        }
                      },
                      child: Text(
                        "Sign in",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ))
                  ],
                )),
          )
        ],
      ),
    );
  }
}
