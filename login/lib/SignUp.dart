// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child: Column(children: [
      const Stack(
        alignment: Alignment(-0.90, -0.90),
        children: [
          Image(
            image: AssetImage("assets/img.PNG"),
            fit: BoxFit.fill,
          ),
          Icon(
            Icons.menu,
            size: 50,
            color: Colors.white,
          )
        ],
      ),
      const SizedBox(
        height: 40,
      ),
      const Text(
        "SIGN UP",
        style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 0, 255, 195)),
      ),
      const Padding(
        padding: EdgeInsets.all(20),
        child: TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Email",
              labelStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.black26,
                  fontWeight: FontWeight.bold)),
        ),
      ),
      const Padding(
        padding: EdgeInsets.all(20),
        child: TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Password",
              labelStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.black26,
                  fontWeight: FontWeight.bold)),
        ),
      ),
      const Padding(
        padding: EdgeInsets.all(20),
        child: TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Confirm Password",
              labelStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.black26,
                  fontWeight: FontWeight.bold)),
        ),
      ),
      const Padding(
          padding: EdgeInsets.only(left: 220, bottom: 24, top: 10),
          child: ElevatedButton(
            onPressed: null,
            style: ButtonStyle(
                minimumSize: MaterialStatePropertyAll(Size(150, 55)),
                backgroundColor:
                    MaterialStatePropertyAll(Color.fromARGB(255, 0, 255, 195))),
            child: Text(
              "Sign Up",
              style: TextStyle(color: Colors.white, fontSize: 26),
            ),
          )),
      GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/login');
        },
        child: Container(
          color: const Color.fromARGB(255, 0, 255, 195),
          height: 60,
          width: MediaQuery.of(context).size.width,
          child: const Center(
            child: Text(
              " Log In",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    ]))));
  }
}
