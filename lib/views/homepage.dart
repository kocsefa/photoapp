import 'package:flutter/material.dart';
import 'package:photo_app/views/login.dart';
import 'package:photo_app/views/register.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.png"), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset("images/logo.png"),
                const Text(
                  "photo",
                  style: TextStyle(fontFamily: "Comfortaa", fontSize: 48),
                ),
              ])
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OutlinedButton(
              onPressed: () {
                Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
              },
              style: OutlinedButton.styleFrom(
                  primary: Colors.black,
                  side: const BorderSide(width: 2),
                  minimumSize: Size(width / 2 - 20, 50)),
              child: const Text("LOG IN"),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Register()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    minimumSize: Size(width / 2 - 20, 50)),
                child: const Text("REGISTER")),
          ],
        ),
      ),
    );
  }
}
