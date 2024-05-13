import 'package:ecommerce/contants.dart';
import 'package:ecommerce/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/src/widgets/framework.dart';

import 'home_screen.dart';

class detailscreen extends StatefulWidget {
  detailscreen({
    this.product,
  });
  final Product? product;

  @override
  State<detailscreen> createState() => _detailscreenState();
}

class _detailscreenState extends State<detailscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: roundiconbutton(
            icondata: Icons.arrow_back_ios,
            press: () {
              Navigator.pop(context);
            },
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "4.5",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow.shade600,
                  size: 18,
                )
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: productimage(product: widget.product),
      ),
    );
  }
}

class productimage extends StatefulWidget {
  const productimage({
    super.key,
    required this.product,
  });

  final Product? product;

  @override
  State<productimage> createState() => _productimageState();
}

class _productimageState extends State<productimage> {
  var selectedimage = 0;
  int selectedcolor = 3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 300,
            child: AspectRatio(
              aspectRatio: 1,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset(widget.product!.images[selectedimage]),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                  widget.product!.images.length,
                  (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedimage = index;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 15),
                          padding: EdgeInsets.all(5),
                          width: 60,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: selectedimage == index
                                  ? kprimarycolor
                                  : Colors.transparent,
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image.asset(widget.product!.images[index]),
                        ),
                      ))
            ],
          ),
          Card(
            elevation: 0,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25))),
                    width: double.infinity,
                    height: 150,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 170),
                          child: Text(
                            widget.product!.title,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 290),
                          child: Container(
                            padding: EdgeInsets.all(5),
                            width: 64,
                            decoration: BoxDecoration(
                                color: widget.product!.isFavourite
                                    ? Color(0xffffe6e6)
                                    : Color(0xff5f6f9),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    bottomLeft: Radius.circular(15))),
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, right: 50),
                          child: Text(widget.product!.description),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            children: [
                              Text(
                                "See more details",
                                style: TextStyle(
                                    color: kprimarycolor, fontSize: 16),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                color: kprimarycolor,
                                size: 12,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
            child: Container(
              color: Colors.grey.shade100,
            ),
          ),
          // SizedBox(height: 10),
          Container(
            color: Colors.grey.shade100,
            padding: EdgeInsets.all(5),
            // decoration: BoxDecoration(
            //     color: Colors.grey.shade100,
            //     borderRadius: BorderRadius.only(
            //         topLeft: Radius.circular(20),
            //         topRight: Radius.circular(20))),
            child: Row(children: [
              ...List.generate(
                  widget.product!.colors.length,
                  (index) => colordot(
                      color: widget.product!.colors[index],
                      isselected: selectedcolor == index)),
              SizedBox(
                width: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 10,
                ),
                child: SizedBox(
                    height: 30,
                    width: 42,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.remove,
                        color: Colors.black,
                        size: 15,
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                      ),
                    )),
              ),
              SizedBox(
                width: 5,
              ),
              SizedBox(
                  height: 30,
                  width: 42,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 15,
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // <-- Radius
                      ),
                    ),
                  )),
            ]),
          ),
          SizedBox(
            height: 40,
          ),
          SizedBox(
            height: 48,
            width: 250,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kprimarycolor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // <-- Radius
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Add to your cart",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
          ),
        ],
      ),
    );
  }
}

class colordot extends StatelessWidget {
  const colordot({super.key, required this.color, this.isselected});

  final Color color;
  final bool? isselected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Container(
        margin: EdgeInsets.only(right: 5),
        padding: EdgeInsets.all(5),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            //
            border: Border.all(
                color:
                    isselected == true ? kprimarycolor : Colors.transparent)),
        child: DecoratedBox(
          decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        ),
      ),
    );
  }
}

class roundiconbutton extends StatelessWidget {
  const roundiconbutton({this.icondata, this.press, this.rating});
  final IconData? icondata;
  final GestureTapCallback? press;
  final double? rating;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        height: 20,
        width: 20,
        child: Icon(
          icondata,
          color: Colors.black,
          size: 18,
        ),
      ),
    );
  }
}
