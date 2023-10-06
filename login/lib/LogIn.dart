import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            "LOGIN",
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: null,
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 255, 195),
                          fontSize: 20),
                    )),
                ElevatedButton(
                  onPressed: null,
                  style: ButtonStyle(
                      minimumSize: MaterialStatePropertyAll(Size(150, 50)),
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 0, 255, 195))),
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 26),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 98,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/signup');
            },
            child: Container(
              color: const Color.fromARGB(255, 0, 255, 195),
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: const Center(
                child: Text(
                  " Sign Up",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
