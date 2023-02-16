import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WelcomeWidget extends StatefulWidget {
  const WelcomeWidget({Key? key}) : super(key: key);

  @override
  State<WelcomeWidget> createState() => _WelcomeWidgetState();
}

class _WelcomeWidgetState extends State<WelcomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 42, 43, 61),
        body: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 32, bottom: 16),
                  child: Text(
                    "Welcome to",
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Text(
                  "Pokedex",
                  style: TextStyle(
                      fontSize: 32.0,
                      color: Color.fromARGB(255, 255, 187, 14),
                      fontWeight: FontWeight.bold),
                ),
                Spacer(
                  flex: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/poke_intro_img.png",
                      height: 260,
                    ),
                  ],
                ),
                Spacer(
                  flex: 2,
                ),
                ElevatedButton(
                  onPressed: () => {},
                  child: Text("Create Account"),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      primary: Color.fromARGB(255, 255, 187, 14),
                      onPrimary: Color.fromARGB(255, 42, 43, 61),
                      textStyle: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey,
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Color.fromARGB(255, 255, 187, 14),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}
