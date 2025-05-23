// import 'package:flutter/material.dart';
// import 'package:homework_w2/views/screens/opt_page.dart';

// class RegisterScreen extends StatefulWidget {
//   const RegisterScreen({super.key});

//   @override
//   State<RegisterScreen> createState() => _RegisterScreenState();
// }

// class _RegisterScreenState extends State<RegisterScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         automaticallyImplyLeading: true,
//         iconTheme: IconThemeData(color: Colors.black),
//       ),
//       body: _body,
//     );
//   }
// }

// Widget get _body {
//   return SingleChildScrollView(
//     child: Padding(
//       padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
//       child: Column(
//         children: [
//           SizedBox(
//             height: 0,
//           ),
//           _logo,
//           SizedBox(
//             height: 30,
//           ),
//           _text,
//           SizedBox(
//             height: 20,
//           ),
//           _email,
//           SizedBox(
//             height: 20,
//           ),
//           _password,
//           SizedBox(
//             height: 20,
//           ),
//           _confirmPassword,
//           SizedBox(
//             height: 30,
//           ),
//           _registerButton,
//           SizedBox(
//             height: 20,
//           ),
//           _divided,
//           SizedBox(
//             height: 20,
//           ),
//           _signupWith,
//           SizedBox(
//             height: 10,
//           ),
//           _connection
//         ],
//       ),
//     ),
//   );
// }

// Widget get _connection {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       Image.asset(
//         "assets/img/fb.png",
//         width: 100,
//         height: 100,
//       ),
//       SizedBox(
//         width: 20,
//       ),
//       Image.asset(
//         "assets/img/google-logo.png",
//         width: 50,
//         height: 50,
//       ),
//     ],
//   );
// }

// Widget get _signupWith {
//   return Container(
//     child: Text(
//       "Sign up with",
//       style: TextStyle(
//           color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold),
//     ),
//   );
// }

// Widget get _divided {
//   return Row(
//     children: <Widget>[
//       Expanded(
//         child: Divider(
//           height: 20,
//           thickness: 1,
//           endIndent: 10,
//           color: Color.fromARGB(255, 187, 187, 187),
//         ),
//       ),
//       Text(
//         "Or",
//         style: TextStyle(color: Colors.grey),
//       ),
//       Expanded(
//         child: Divider(
//           height: 20,
//           thickness: 1,
//           indent: 10,
//           color: Color.fromARGB(255, 187, 187, 187),
//         ),
//       ),
//     ],
//   );
// }

// Widget get _registerButton {
//   return Column(
//     children: [
//       ElevatedButton(
//         style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.amber[900],
//             minimumSize: Size(double.infinity, 45)),
//         onPressed: () {
//            Navigator.push(context, MaterialPageRoute(builder: (context){
//               return OptScreen();
//             }));
//         },
//         child: Text(
//           "Register",
//           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//         ),
//       ),
//     ],
//   );
// }

// Widget get _email {
//   return Column(
//     children: [
//       TextField(
//         decoration: InputDecoration(
//             labelText: 'Email',
//             prefix: Icon(Icons.person),
//             border:
//                 OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
//       ),
//     ],
//   );
// }

// Widget get _password {
//   return Column(
//     children: [
//       TextField(
//         // obscureText: obscureText,
//         decoration: InputDecoration(
//             labelText: 'Password',
//             prefix: Icon(Icons.lock),
//             suffixIcon: IconButton(
//               onPressed: () {
//                 // setState(() {
//                 //   obscureText = false;
//                 // });
//               },
//               icon: Icon(Icons.visibility),
//             ),
//             // hintText: "Password",
//             border:
//                 OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
//       ),
//     ],
//   );
// }

// Widget get _confirmPassword {
//   return Column(
//     children: [
//       TextField(
//         // obscureText: obscureText,
//         decoration: InputDecoration(
//             labelText: 'Confirm Password',
//             prefix: Icon(Icons.lock),
//             suffixIcon: IconButton(
//               onPressed: () {
//                 // setState(() {
//                 //   obscureText = false;
//                 // });
//               },
//               icon: Icon(Icons.visibility),
//             ),
//             // hintText: "Password",
//             border:
//                 OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
//       ),
//     ],
//   );
// }

// Widget get _logo {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Flexible(
//           child: Text(
//             "FastFast",
//             style: TextStyle(
//               fontSize: 60,
//               fontWeight: FontWeight.bold,
//               color: Colors.amber[900],
//               letterSpacing: 2,
//             ),
//             overflow: TextOverflow.ellipsis,
//           ),
//         ),
//         const SizedBox(width: 8),
//         Icon(
//           Icons.location_on,
//           size: 60,
//           color: Colors.amber[900],
//         ),
//       ],
//     );
//   }

// Widget get _text {
//   return Column(
//     children: [
//       Center(
//         child: Text(
//           "Create Account ",
//           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
//         ),
//       ),
//       SizedBox(
//         height: 15,
//       ),
//       Center(
//         child: Text(
//           "Please enter the details below to register.",
//           style: TextStyle(color: Colors.black54, fontSize: 16),
//         ),
//       ),
//     ],
//   );
// }
import 'package:flutter/material.dart';
import 'package:homework_w2/views/screens/opt_page.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  bool obscureText1 = true;
  bool obscureText2 = true;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: _buildBody(context), // ✅ Pass context here
    );
  }

  // ✅ This method builds the body and receives context
  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            const SizedBox(height: 0),
            _logo,
            const SizedBox(height: 30),
            _text,
            const SizedBox(height: 20),
            _email,
            const SizedBox(height: 20),
            _password,
            const SizedBox(height: 20),
            _confirmPassword,
            const SizedBox(height: 30),
            _registerButton(context), // ✅ Now works with context
            const SizedBox(height: 20),
            _divided,
            const SizedBox(height: 20),
            _signupWith,
            const SizedBox(height: 10),
            _connection,
          ],
        ),
      ),
    );
  }


Widget get _connection {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        "assets/img/fb.png",
        width: 100,
        height: 100,
      ),
      SizedBox(
        width: 20,
      ),
      Image.asset(
        "assets/img/google-logo.png",
        width: 50,
        height: 50,
      ),
    ],
  );
}

Widget get _signupWith {
  return Container(
    child: Text(
      "Sign up with",
      style: TextStyle(
          color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold),
    ),
  );
}

Widget get _divided {
  return Row(
    children: <Widget>[
      Expanded(
        child: Divider(
          height: 20,
          thickness: 1,
          endIndent: 10,
          color: Color.fromARGB(255, 187, 187, 187),
        ),
      ),
      Text(
        "Or",
        style: TextStyle(color: Colors.grey),
      ),
      Expanded(
        child: Divider(
          height: 20,
          thickness: 1,
          indent: 10,
          color: Color.fromARGB(255, 187, 187, 187),
        ),
      ),
    ],
  );
}

// Widget get _registerButton {
//   return Column(
//     children: [
//       ElevatedButton(
//         style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.amber[900],
//             minimumSize: Size(double.infinity, 45)),
//         onPressed: () {
//            Navigator.push(context, MaterialPageRoute(builder: (context){
//               return OptScreen();
//             }));
//         },
//         child: Text(
//           "Register",
//           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//         ),
//       ),
//     ],
//   );
// }

Widget get _email {
  return Column(
    children: [
      TextField(
        decoration: InputDecoration(
            labelText: 'Email',
            prefix: Icon(Icons.person),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
      ),
    ],
  );
}

Widget get _password {
  return Column(
    children: [
      TextField(
        obscureText: obscureText1,
        decoration: InputDecoration(
            labelText: 'Password',
            prefix: Icon(Icons.lock),
            suffixIcon: IconButton(
              onPressed: () {
               setState(() {
                    obscureText1 = false;
                  });
              },
              icon: Icon(Icons.visibility),
            ),
            // hintText: "Password",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
      ),
    ],
  );
}

Widget get _confirmPassword {
  return Column(
    children: [
      TextField(
        obscureText: obscureText2,
        decoration: InputDecoration(
            labelText: 'Confirm Password',
            prefix: Icon(Icons.lock),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  obscureText2 = false;
                });
              },
              icon: Icon(Icons.visibility),
            ),
            // hintText: "Password",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
      ),
    ],
  );
}

Widget get _logo {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
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
        ),
        const SizedBox(width: 8),
        Icon(
          Icons.location_on,
          size: 60,
          color: Colors.amber[900],
        ),
      ],
    );
  }

Widget get _text {
  return Column(
    children: [
      Center(
        child: Text(
          "Create Account ",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Center(
        child: Text(
          "Please enter the details below to register.",
          style: TextStyle(color: Colors.black54, fontSize: 16),
        ),
      ),
    ],
  );
}

  // ✅ Accept context here so Navigator works
  Widget _registerButton(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber[900],
            minimumSize: const Size(double.infinity, 45),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const OptScreen()),
            );
          },
          child: const Text(
            "Register",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ],
    );
  }

  // 🔻 Placeholder widgets — replace with your actual widgets or TextFormFields
  // Widget get _logo => const FlutterLogo(size: 100);
  // Widget get _text => const Text("Register", style: TextStyle(fontSize: 24));
  // Widget get _email => const TextField(decoration: InputDecoration(labelText: "Email"));
  // Widget get _password => const TextField(obscureText: true, decoration: InputDecoration(labelText: "Password"));
  // Widget get _confirmPassword => const TextField(obscureText: true, decoration: InputDecoration(labelText: "Confirm Password"));
  // Widget get _divided => const Divider();
  // Widget get _signupWith => const Text("Sign up with:");
  // Widget get _connection => const Row(children: [Icon(Icons.facebook), SizedBox(width: 10), Icon(Icons.g_mobiledata)]);
}
