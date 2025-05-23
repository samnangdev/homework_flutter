import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OptScreen extends StatefulWidget {
  const OptScreen({super.key});

  @override
  State<OptScreen> createState() => _OptScreenState();
}

class _OptScreenState extends State<OptScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //    automaticallyImplyLeading: false,
        // ),
        body: _body);
  }
}

Widget get _body {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _title,
        SizedBox(
          height: 50,
        ),
        _pinput,
        SizedBox(
          height: 40,
        ),
        _verifyButton
      ],
    ),
  );
}

Widget get _verifyButton {
  return Column(
    children: [
      ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber[900],
            minimumSize: Size(double.infinity, 45)),
        onPressed: () {},
        child: Text(
          "Verify",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    ],
  );
}

Widget get _title {
  return Column(
    children: [
      Center(
        child: Text(
          "OTP Verification",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Center(
        child: Text(
          "Please enter the OTP sent on your registered Email.",
          style: TextStyle(color: Colors.black54, fontSize: 16),
        ),
      ),
    ],
  );
}

Widget get _pinput {
  final defaultPinTheme = PinTheme(
      width: 55,
      height: 60,
      textStyle: TextStyle(fontSize: 22, color: Colors.black),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 204, 204, 204),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Color.fromARGB(0, 0, 0, 0))));
  return Center(
      child: Pinput(
    length: 6,
    defaultPinTheme: defaultPinTheme,
    focusedPinTheme: defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
          border: Border.all(color: Color.fromARGB(255, 255, 102, 0))),
    ),
    onCompleted: (pin) => debugPrint(pin),
  ));
}
