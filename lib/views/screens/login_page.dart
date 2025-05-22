
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  bool obscureText = true;

  Widget build(BuildContext context) {
    return Scaffold(body: _body);
  }

  Widget get _body {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              _logo,
              SizedBox(
                height: 30,
              ),
              _text,
              SizedBox(
                height: 40,
              ),
              _username,
              SizedBox(
                height: 30,
              ),
              _password,
              _forgetPassword,
              SizedBox(
                height: 15,
              ),
              _loginButton,
              SizedBox(
                height: 10
              ),
              _signinText1
              // _divided,
              //  SizedBox(
              //   height: 10
              // ),
              // _signinWith,
              //  SizedBox(
              //   height: 10
              // ),
              // _connection
              // Divider(height: 20, thickness: 1, endIndent: 0, color: Color.fromARGB(255, 187, 187, 187)),
            ],
          ),
        ),
      ),
    );
  }

  Widget get _signinText1{
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account?", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),), ),
        TextButton(onPressed: 
        () {
          // Navigator.push(context, MaterialPageRoute(builder: (context){}))
        }, child: Text("Sign In", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.amber[900]),))
      ],
    );
  }


  Widget get _connection{
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/img/fb.png", width: 100, height: 100,),
        SizedBox(width: 20,),
        Image.asset("assets/img/google-logo.png", width: 50, height: 50,),
      ],
    );
  }

Widget get _signinWith{
    return Container(
        child: Text("Sign in with", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold), ),
    );
  }

  Widget get _forgetPassword{
    return Container(
      alignment: Alignment.topRight,
      child: TextButton(
        onPressed: () {
          
        },
        child: Text("Forget Password?", style: TextStyle(color: Colors.black54), ),
      ),
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

  Widget get _username {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
              labelText: 'Username',
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
          obscureText: obscureText,
          decoration: InputDecoration(
              labelText: 'Password',
              prefix: Icon(Icons.lock),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    obscureText = false;
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

  Widget get _loginButton {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber[900],
              minimumSize: Size(double.infinity, 45)),
          onPressed: () {},
          child: Text(
            "Login",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ],
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

  // Widget get _forgetpassword{
  //   return Column(
  //     children: [
  //       Text("Forget Password")
  //     ],
  //   )
  // }
  // Widget get
}
