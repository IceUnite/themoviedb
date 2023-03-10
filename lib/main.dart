import 'package:flutter/material.dart';
import 'package:themoviedb/widjets/auth/auth_widjet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Color.fromRGBO(3,37,65,1)),
        primarySwatch: Colors.blue,
      ),
      home: AuthWidjet(),
    );
  }
}
