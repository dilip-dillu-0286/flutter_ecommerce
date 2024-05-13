import 'package:ecommerce/contants.dart';
import 'package:ecommerce/OTPscreen.dart';
import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  late String emai, _phone, _name;
  final namecontroller = TextEditingController();
  final phonecontroller = TextEditingController();
  final emailcontroller = TextEditingController();

  TextEditingController _password = TextEditingController();
  TextEditingController _conformpassword = TextEditingController();
  final conformpassword = TextEditingController();
  final _formfield = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp"),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: _formfield,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  "images/profile.png",
                  height: 80,
                  width: 400,
                ),
                Text(
                  "Regstration account",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "fill the below details to\ncreate an account",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                      controller: namecontroller,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          border: InputBorder.none,
                          hintText: "Enter Name",
                          prefixIcon: Icon(Icons.person),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: ktextcolor),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: ktextcolor),
                          )),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter name";
                        }
                        if (!RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                          return " Enter correct name";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (String? name) {
                        _name = name.toString();
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    controller: emailcontroller,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        border: InputBorder.none,
                        hintText: "Email",
                        prefixIcon: Icon(Icons.mail),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: ktextcolor),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: ktextcolor),
                        )),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "enter email";
                      }
                      if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                        return "Please enter a valid email address";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                      controller: phonecontroller,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              gapPadding: 4,
                              borderRadius: BorderRadius.circular(20)),
                          hintText: "phone number",
                          prefixIcon: Icon(Icons.phone),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: ktextcolor),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: ktextcolor),
                          )),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "enter phone number";
                        } else if (value.length < 10) {
                          return "enter minum 10 charactertics";
                        } else if ((!RegExp(
                                r'^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$')
                            .hasMatch(value))) {
                          return "please enter valid phn number";
                        } else {
                          return null;
                        }
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    controller: _password,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: "password",
                        prefixIcon: Icon(Icons.lock),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: ktextcolor),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: ktextcolor),
                        )),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "entaer a password";
                      } else if (_password.text.length < 8) {
                        return "please enter minimum 8 characterstics";
                      } else if ((!RegExp(
                              r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)")
                          .hasMatch(value))) {
                        return null;
                      } else {
                        "password should have uppercase lowecase and special character";
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    controller: _conformpassword,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: "conformpassword",
                        prefixIcon: Icon(Icons.lock),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: ktextcolor),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: ktextcolor),
                        )),
                    validator: (value) {
                      if (_conformpassword != _password) {
                        return null;
                      } else {
                        "password dont match";
                      }
                    },
                  ),
                ),
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
                                    builder: (context) => OTPscreen()));
                            // emailController.clear();
                            // passController.clear();
                            // return;
                          }
                          //  else {
                          //   print("unsucessful");
                          // }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          textStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontStyle: FontStyle.normal),
                        ),
                        child: Text("Sign Up"))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
