import 'package:flutter/material.dart';
import 'package:photo_app/views/discover.dart';

class Register2 extends StatefulWidget {
  String mailAdres;
  String password;

  Register2({required this.mailAdres, required this.password});

  @override
  State<Register2> createState() => _Register2State();
}

class _Register2State extends State<Register2> {
  var tfName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          toolbarHeight: 80,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.undo, color: Colors.black)),
          shadowColor: Colors.white,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
              color: Colors.white,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "Register",
                        style: TextStyle(fontFamily: "Comfortaa", fontSize: 45),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                      child: TextField(
                          controller: tfName,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2, color: Colors.black)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2, color: Colors.black)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2, color: Colors.black)),
                              hintText: "Insert Name"),
                          onChanged: (context) => print(tfName.text)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: ElevatedButton(
                          onPressed: () {

                            print(
                                "${tfName.text} - ${widget.mailAdres} - ${widget.password} Logged In");
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Discover()));
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              minimumSize: const Size.fromHeight(60)),
                          child: const Text("REGISTER")),
                    ),
                    /*Padding(
                        padding: const EdgeInsets.all(16),
                        child: RichText(
                          text: const TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                    text:
                                        "By signing up, you agree to Photo’s "),
                                TextSpan(text: "Terms of Service",style: TextStyle(fontWeight: FontWeight.bold ,fontStyle: FontStyle.italic)),
                                TextSpan(text: " and "),
                                TextSpan(text: "Privacy Policy.",style: TextStyle(fontWeight: FontWeight.bold)),
                              ]),
                        )),*/
                  ])),
        ));
  }
}
