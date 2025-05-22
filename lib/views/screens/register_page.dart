import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _body,);
  }
}

Widget get _body{
  return Center(
    child: _logo
    );
}

Widget get _logo {
    return Center(
      child: Text(
        "FastFast",
        style: TextStyle(
          fontSize: 60,
          fontWeight: FontWeight.bold,
          color: Colors.amber[900],
          letterSpacing: 2,
        ),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget get _text {
    return Column(
      children: [
        Center(
          child: Text(
            "Get Started Now",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Center(
          child: Text(
            "Please enter the details below to continue.",
            style: TextStyle(color: Colors.black54, fontSize: 16),
          ),
        ),
      ],
    );
  }