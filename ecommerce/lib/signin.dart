import 'package:ecommerce/body.dart';
import 'package:ecommerce/body1.dart';
import 'package:ecommerce/home_screen.dart';
import 'package:ecommerce/signup.dart';
import 'package:flutter/material.dart';

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  @override
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passtoggle = true;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // actions: [Icon(Icons.arrow_back)],
        centerTitle: true,
        title: Text(
          "SignIn",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Form(
          key: _formfield,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),

                Image.asset(
                  "images/profile.png",
                  height: 150,
                  width: 180,
                ),
                SizedBox(
                  height: 15,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Enter your email ",
                      labelText: "Email",
                      suffixIcon: Icon(
                        Icons.mail,
                        size: 20,
                        color: Colors.grey,
                      ),

                      // suffix: InkWell(
                      //   onTap: () {
                      //     setState(() {

                      //     });
                      //   },
                      // ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 22, vertical: 15),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey),
                        gapPadding: 10,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey),
                        gapPadding: 10,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "enter email";
                      }
                      if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                        return "Please enter a valid email address";
                      }
                      return null;
                      // bool emailvalid = RegExp(
                      //         r"^[a-zA-Z0-9.!#$%&'*+-/=?^_{|}~]@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      //     .hasMatch(value);
                      // if (emailvalid) {
                      //   return "enter valid emai";
                      // }
                      // return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    obscureText: passtoggle,
                    keyboardType: TextInputType.emailAddress,
                    controller: passController,
                    decoration: InputDecoration(
                      hintText: "Enter your password ",
                      labelText: "password",
                      // suffixIcon: Icon(
                      //   Icons.lock,
                      //   size: 20,
                      //   color: Colors.grey,
                      // ),
                      suffix: InkWell(
                        onTap: () {
                          setState(() {
                            passtoggle = !passtoggle;
                          });
                        },
                        child: Icon(passtoggle
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 22, vertical: 15),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey),
                        gapPadding: 10,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey),
                        gapPadding: 10,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "enter password";
                      } else if (passController.text.length < 6) {
                        return "password should recqire more than 6 cgarcaters";
                      } else if (RegExp(
                              r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)")
                          .hasMatch(value)) {
                        return null;
                      } else {
                        return "passwoed should contain capital,smaller and special character";
                      }

                      //   bool passvalid =
                      //       RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)")
                      //           .hasMatch(value);
                      //   if (passvalid) {
                      //     return null;
                      //   // } else {
                      //   //   return "password should contain capital,small letters and special";
                      //   // }
                    },
                  ),
                ),

                // InkWell(
                //   onTap: () {

                //   },
                // ),
                SizedBox(
                  height: 25,
                ),

                SizedBox(
                    height: 40,
                    width: 280,
                    child: ElevatedButton(
                        onPressed: () {
                          if (_formfield.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => home_screen()));
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          textStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontStyle: FontStyle.normal),
                        ),
                        child: Text("Login In"))),
                SizedBox(
                  height: 18,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Alreday have accounut? ",
                      style: TextStyle(color: Colors.black),
                    ),
                    // SizedBox(
                    //   width: 2,
                    // ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => signup()));
                      },
                      child: Text(
                        "SignUp",
                        style: TextStyle(color: Colors.orange),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
