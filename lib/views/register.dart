import 'package:flutter/material.dart';
import 'package:photo_app/views/register2.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var tfMailAdres = TextEditingController();
  var tfPassword = TextEditingController();

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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                      controller: tfMailAdres,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.black)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.black)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.black)),
                          hintText: "jane@example.com"),
                      onChanged: (context) => print(tfMailAdres.text)),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: TextField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      autocorrect: false,
                      enableSuggestions: false,
                      controller: tfPassword,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color: Colors.black)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color: Colors.black)),
                      ),
                      onChanged: (context) => print(tfPassword.text)),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: ElevatedButton(
                      onPressed: () {
                        if(tfPassword.text.length > 8 && tfMailAdres.text !="") {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) =>  Register2(mailAdres: tfMailAdres.text, password: tfPassword.text)));
                        }else {
                          ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Kriterleri doldurmalısın")));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          minimumSize: const Size.fromHeight(60)),
                      child: const Text("NEXT")),
                )
              ]),
        ),
      ),
    );
  }
}
