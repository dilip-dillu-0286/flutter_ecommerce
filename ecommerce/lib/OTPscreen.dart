import 'package:ecommerce/contants.dart';
import 'package:ecommerce/home_screen.dart';
import 'package:flutter/material.dart';
// import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

class OTPscreen extends StatefulWidget {
  const OTPscreen({super.key});

  @override
  State<OTPscreen> createState() => _OTPscreenState();
}

class _OTPscreenState extends State<OTPscreen> {
  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Theme.of(context).primaryColor),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  // _getSignatureCode() async {
  //   String? signature = await SmsVerification.getAppSignature();
  //   print("signature $signature");
  // }
  TextEditingController textEditingController =
      new TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    FocusNode pin2focusNode;
    FocusNode pin3focusNode;
    FocusNode pin4focusNode;
    @override
    void inistate() {
      super.initState();
      pin2focusNode = FocusNode();
      pin3focusNode = FocusNode();
      pin4focusNode = FocusNode();
    }

    // @override
    // void dispose() {
    //   super.dispose();
    //   pin2focusNode = FocusNode();
    //   pinfocusNode = FocusNode();
    //   pin2focusNode = FocusNode();
    // }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
        title: Text(
          "OTP verfication",
          style: TextStyle(
              color: Colors.grey, fontSize: 22, fontWeight: FontWeight.w500),
        ),
      ),
      body: SafeArea(
        child: Form(
          child: SizedBox(
            // width: double.infinity,

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        " OTP Verfication",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("we have sent Otp to your +91630445****"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("This code will expires in 30secs"),
                          SizedBox(
                            width: 10,
                          ),
                          TweenAnimationBuilder(
                              tween: Tween(begin: 30.0, end: 0),
                              duration: Duration(seconds: 30),
                              builder: (context, value, child) => Text(
                                    "00:${value.toInt()}",
                                    style: TextStyle(color: kprimarycolor),
                                  )),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 70,
                              height: 50,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(fontSize: 24),
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide:
                                              BorderSide(color: ktextcolor)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide:
                                              BorderSide(color: ktextcolor))),
                                  onChanged: (value) {},
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 70,
                              height: 50,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(fontSize: 24),
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide:
                                              BorderSide(color: ktextcolor)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide:
                                              BorderSide(color: ktextcolor))),
                                  onChanged: (value) {},
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 70,
                              height: 50,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(fontSize: 24),
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide:
                                              BorderSide(color: ktextcolor)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide:
                                              BorderSide(color: ktextcolor))),
                                  onChanged: (value) {},
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 70,
                              height: 50,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(fontSize: 24),
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide:
                                              BorderSide(color: ktextcolor)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide:
                                              BorderSide(color: ktextcolor))),
                                  onChanged: (value) {},
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      // Row(
                      //   children: [
                      //     SizedBox(
                      //       width: 60,
                      //       child: TextFormField(
                      //         style: TextStyle(fontSize: 24),
                      //         decoration: InputDecoration(
                      //             enabledBorder: OutlineInputBorder()),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // SizedBox(
                      //   height: 60,
                      // ),
                      // TextFieldPin(
                      //     textController: textEditingController,
                      //     autoFocus: false,
                      //     codeLength: 4,
                      //     alignment: MainAxisAlignment.center,
                      //     defaultBoxSize: 46.0,
                      //     margin: 10,
                      //     selectedBoxSize: 46.0,
                      //     textStyle: TextStyle(fontSize: 16),
                      //     defaultDecoration: _pinPutDecoration.copyWith(
                      //         border: Border.all(color: Colors.grey)),
                      //     selectedDecoration: _pinPutDecoration,
                      //     onChange: (code) {
                      //       setState(() {});
                      //     }),
                      SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => home_screen()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            textStyle: const TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontStyle: FontStyle.normal),
                          ),
                          child: Text("continue")),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Resend OTP code",
                        style: TextStyle(decoration: TextDecoration.underline),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
