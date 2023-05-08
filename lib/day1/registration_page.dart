import 'package:flutter/material.dart';
import 'package:project1/day1/login_page.dart';
import 'package:project1/home_page.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool _checkbox = false;
  var fnameController = TextEditingController();
  var lnameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  var fname = '', lname = '', email = '', password = '', cpassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text('Hey there,'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  'Create Account',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                child: TextField(
                  controller: fnameController,
                  decoration: InputDecoration(
                      label: Text('First Name'), border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                child: TextField(
                  controller: lnameController,
                  decoration: InputDecoration(
                      label: Text('Last Name'), border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      label: Text('Email'), border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      label: Text('Password'), border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                child: TextField(
                  controller: confirmPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      label: Text('Confirm Password'),
                      border: OutlineInputBorder()),
                ),
              ),
              TextButton(onPressed: () {}, child: Text('Privacy Policy')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      fname = fnameController.text;
                      lname = lnameController.text;
                      email = emailController.text;
                      password = passwordController.text;
                      cpassword = confirmPasswordController.text;

                      if (fname.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Enter your First name")));
                      } else if (lname.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Enter your Last name")));
                      } else if (email.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Enter Email")));
                      } else if (password.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Enter Password")));
                      } else if (cpassword.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Confirm your password")));
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ));
                      }
                    });
                  },
                  child: Text('Register')),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                  },
                  child: Text('Login+')),
            ],
          )
        ],
      ),
    );
  }
}
