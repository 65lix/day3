// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(primarySwatch: Colors.red),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Flutter"),centerTitle: true,
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:project1/day1/login_page.dart';
import 'package:project1/day1/registration_page.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.orange),
      // home: LoginPage(),
      home: RegistrationPage(),
    );
  }
}
