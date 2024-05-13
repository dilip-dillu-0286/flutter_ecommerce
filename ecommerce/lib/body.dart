import 'package:ecommerce/contants.dart';
import 'package:ecommerce/signin.dart';
import 'package:flutter/material.dart';

class body extends StatefulWidget {
  const body({super.key});

  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  int currentpage = 0;
  int index = 0;
  // PageController _pageController = PageController(initialPage: 0);
  List<Map<String, String>> splashData = [
    {"text": "welcome to Tokoto,Lets shop!", "image": "images/image2.jpeg"},
    {
      "text": "we help people conect store\n around united state of america",
      "image": "images/splash.jpeg"
    },
    // {
    //   "text": "we show the easy way to shop.\njust stay at home with us",
    //   "image": "images/splash4.jpeg"
    // },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: double.infinity,
        width: 500,
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: PageView.builder(
                  // controller: _pageController,
                  onPageChanged: (value) {
                    setState(() {
                      currentpage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => splashcontent(
                    text: splashData[index]["text"],
                    image: splashData[index]["image"],
                    title: "TOKOTO",
                  ),
                )),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatedContainer(
                        duration: Duration(microseconds: 2),
                        margin: EdgeInsets.only(right: 6),
                        height: 6,
                        width: 6,
                        decoration: BoxDecoration(
                            color: currentpage == index
                                ? kprimarycolor
                                : Color(0xffd8d8d8),
                            borderRadius: BorderRadius.circular(3)),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 6),
                        height: 6,
                        width: 6,
                        decoration: BoxDecoration(
                            color: currentpage == index
                                ? Color(0xffd8d8d8)
                                : kprimarycolor,
                            borderRadius: BorderRadius.circular(3)),
                      ),
                      // Container(
                      //   margin: EdgeInsets.only(right: 6),
                      //   height: 6,
                      //   width: 6,
                      //   decoration: BoxDecoration(
                      //       color: currentpage == index
                      //           ? Color(0xffd8d8d8)
                      //           : kprimarycolor,
                      //       borderRadius: BorderRadius.circular(3)),
                      // ),
                    ],
                  ),
                  SizedBox(
                    height: 180,
                  ),
                  button(
                    text: "continue",
                    press: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => signin()));
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class button extends StatelessWidget {
  const button({this.press, this.text});
  final String? text;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 300,
      child: ElevatedButton(
          onPressed: press,
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(kprimarycolor),
          ),
          child: Text(text.toString())),
    );
  }
}

class splashcontent extends StatelessWidget {
  const splashcontent({this.image, this.text, this.title});
  final String? text, image, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Text(
          title.toString(),
          style: TextStyle(
              fontSize: 25, color: kprimarycolor, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text.toString(),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 100,
        ),
        Image.asset(
          image.toString(),
          height: 200,
          width: 220,
        )
      ],
    );
  }
}
