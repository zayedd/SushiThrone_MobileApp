import 'package:flutter/material.dart';
import 'package:sushi_throne/screens/login.dart';

class Drawerc extends StatelessWidget {
  const Drawerc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Drawer(
        child: ListView(
          children: [
            Container(
              height: 200,
              color: Colors.black,
              child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("images/salmon.jpg"),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Guest",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      )
                    ],
                  )),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: const Text('Login'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login()));
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.fastfood_outlined),
              title: const Text('Orders'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.money_off),
              title: const Text('Offers'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.menu_book_outlined),
              title: const Text('Menu'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
