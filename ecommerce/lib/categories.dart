import 'package:flutter/material.dart';

class categories extends StatelessWidget {
  List<Map<String, dynamic>> listdata = [
    {"icon": Icon(Icons.flash_auto), "text": "Flash Deal"},
    {"icon": Icon(Icons.bike_scooter), "text": "Bill"},
    {"icon": Icon(Icons.games), "text": "Game"},
    {"icon": Icon(Icons.games), "text": "Daily Gift"},
    {"icon": Icon(Icons.discord), "text": "More"}
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ...List.generate(
              listdata.length,
              (index) => categoricard(
                    iconbutton: listdata[index]["icon"],
                    text: listdata[index]["text"],
                    press: () {},
                  ))
        ],
      ),
    );
  }
}

class categoricard extends StatelessWidget {
  const categoricard({super.key, this.iconbutton, this.press, this.text});

  final String? text;
  final Icon? iconbutton;
  final GestureTapCallback? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: 48,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Color(0xffffecdf),
                    borderRadius: BorderRadius.circular(10)),
                child: iconbutton,
              ),
            ),
            SizedBox(height: 10),
            Text(text.toString())
          ],
        ),
      ),
    );
  }
}
