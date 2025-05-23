import 'package:flutter/material.dart';
import 'package:homework_w2/views/screens/get_started_page.dart';
import 'package:homework_w2/views/screens/opt_page.dart';
import 'package:homework_w2/views/screens/register_page.dart';

void main() {
  final app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(255, 127, 41, 1)),

        ),
      home: const GetStartedScreen(),
    );
  }
}