import 'package:flutter/material.dart';

import '../home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Swiggy"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(100, 100, 100, 50),
              child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.network(
                      'https://ajwafamilyrestaurant.in/images/assets/s.png')),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
              child: TextField(
                decoration: InputDecoration(
                    label: Text('Email'), border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 50),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    label: Text('Password'), border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
                width: 140,
                height: 45,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ));
                    },
                    child: Text('Login')))
          ])
        ],
      ),
    );
  }
}
