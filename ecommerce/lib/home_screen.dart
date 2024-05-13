import 'package:ecommerce/cart.dart';
import 'package:ecommerce/contants.dart';
import 'package:ecommerce/detailscreen.dart';
import 'package:ecommerce/product.dart';
import 'package:ecommerce/profilescreen.dart';
import 'package:ecommerce/signin.dart';

import 'package:flutter/material.dart';
import 'categories.dart';
import 'contants.dart';
import 'detailscreen.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  List<Map<String, dynamic>> info = [
    {"icon": Icon(Icons.flash_auto), "text": "Flash Deal"},
    {"icon": Icon(Icons.bike_scooter), "text": "Bill"},
    {"icon": Icon(Icons.games), "text": "Game"},
    {"icon": Icon(Icons.games), "text": "Daily Gift"},
    {"icon": Icon(Icons.discord), "text": "More"}
  ];

  int selectedindex = 0;
  void onitemtapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  final int noOfitems = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: "search product",
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          // enabledBorder: OutlineInputBorder()
                        ),
                      ),
                      height: 45,
                      width: 200,
                      decoration: BoxDecoration(
                        color: ksecondarycolor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                            padding: EdgeInsets.all(5),
                            height: 38,
                            width: 38,
                            decoration: BoxDecoration(
                              color: ksecondarycolor.withOpacity(0.2),
                              shape: BoxShape.circle,
                            ),
                            child: InkWell(
                                onTap: () {
                                  setState(() {});
                                },
                                child: GestureDetector(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => cart())),
                                    child:
                                        Icon(Icons.shopping_cart, size: 20)))),
                        Positioned(
                          right: 0,
                          top: -3,
                          child: Container(
                            child: Center(
                                child: Text(
                              "3",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                  height: 1,
                                  fontWeight: FontWeight.w600),
                            )),
                            height: 14,
                            width: 14,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 1.5,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                            padding: EdgeInsets.all(5),
                            height: 38,
                            width: 38,
                            decoration: BoxDecoration(
                              color: ksecondarycolor.withOpacity(0.2),
                              shape: BoxShape.circle,
                            ),
                            child: InkWell(
                                onTap: () {},
                                child: Icon(Icons.notifications, size: 20))),
                        Positioned(
                          right: 0,
                          top: -3,
                          child: Container(
                            child: Center(
                                child: Text(
                              "3",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                  height: 1,
                                  fontWeight: FontWeight.w600),
                            )),
                            height: 14,
                            width: 14,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 1.5,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  width: double.infinity,
                  height: 73,
                  decoration: BoxDecoration(
                      color: Color(0xFf4a3298),
                      borderRadius: BorderRadius.circular(15)),
                  child: Text.rich(TextSpan(
                    text: "A summer suprise\n",
                    style: TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                          text: "cashback 20%",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                    ],
                  ))),
              SizedBox(
                height: 12,
              ),
              categories(), // Expanded(
              //   child: ListView.builder(
              //       scrollDirection: Axis.horizontal,
              //       itemCount: data.length,
              //       itemBuilder: (context, index) {
              //         return categories(
              //           child: data[index],
              //         );
              //       }),
              // ),
              SizedBox(
                height: 30,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Special for you",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "See More",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      containercard(
                        image: "images/productimage.jpeg",
                        noOfbrands: 18,
                        category: "Smartphone",
                        press: () {},
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      containercard(
                        image: "images/productimage1.jpeg",
                        noOfbrands: 24,
                        category: "Fashions",
                        press: () {},
                      ),
                      SizedBox(
                        width: 20,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Popular product",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "See More",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(demoProducts.length, (index) {
                      if (demoProducts[index].isPopular) ;
                      return productcard(
                          product: demoProducts[index],
                          press: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => detailscreen(
                                        product: demoProducts[index],
                                      ))));
                    })
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.category,
                color: Colors.deepOrange,
                size: 30,
              ),
              label: "",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.deepOrange,
                size: 30,
              ),
              label: "",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.message,
                color: Colors.deepOrange,
                size: 30,
              ),
              label: "",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => profilescreen()));
                },
                child: Icon(
                  Icons.person,
                  color: Colors.deepOrange,
                  size: 30,
                ),
              ),
              label: "",
              backgroundColor: Colors.white)
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: selectedindex,
        selectedItemColor: Colors.white,
        iconSize: 40,
        onTap: onitemtapped,
        elevation: 6,
      ),
    );
  }
}

class productcard extends StatelessWidget {
  const productcard(
      {this.aspectraio = 1.0, this.product, this.width = 140, this.press});
  final double aspectraio, width;
  final Product? product;
  final GestureTapCallback? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: SizedBox(
          width: width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: aspectraio,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),

                        // boxShadow: [
                        //   BoxShadow(offset: Offset(0, 0), blurRadius: 0.2)
                        // ],
                        borderRadius: BorderRadius.circular(20)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        product!.images[0],
                        // fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  product!.title,
                  style: TextStyle(color: Colors.black),
                  maxLines: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${product!.price}",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: kprimarycolor),
                    ),
                    InkWell(
                      // borderRadius: BorderRadius.circular(30),
                      child: SizedBox(
                        width: 28,
                        height: 28,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: product!.isFavourite
                                  ? kprimarycolor.withOpacity(0.15)
                                  : ksecondarycolor.withOpacity(0.1)),
                          child: Icon(
                            Icons.favorite,
                            // color: product!.isFavourite,
                            color: product!.isFavourite
                                ? Color(0xffff4848)
                                : Color(0xffdedc94),
                            size: 15,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class containercard extends StatelessWidget {
  const containercard({this.category, this.noOfbrands, this.press, this.image});
  final String? image, category;
  final int? noOfbrands;
  final GestureTapCallback? press;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        children: [
          SizedBox(
            height: 120,
            width: 290,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    image.toString(),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                      Color(0xff343434).withOpacity(0.4),
                      Color(0xff34343).withOpacity(0.15)
                    ]))),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text.rich(TextSpan(text: "", children: [
                    TextSpan(
                        text: "$category\n".toString(),
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: "$noOfbrands brands",
                        style: TextStyle(color: Colors.white))
                  ])),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
// class productdetailsArguments {
//   final Product? product;
//   productdetailsArguments({this.product});
// }