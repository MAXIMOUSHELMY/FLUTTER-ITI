import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Registration.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/", 
      routes: {
      "/" : (context) => const Welcomepage(),
      "/login" : (context) => const Loginpage(),
      "/Registration" : (context) =>  Registrationpage(),
      }
    );
  }
}
