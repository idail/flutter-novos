import 'package:flutter/material.dart';
import 'package:flutternovos/login.dart';
import 'package:flutternovos/tela.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Praticando';
    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.indigo,
        primarySwatch: Colors.green,
        appBarTheme: const AppBarTheme(
          color: Colors.blueAccent,
        )
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body:  Login(),
        ),
      );
  }
}