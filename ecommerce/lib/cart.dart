import 'package:ecommerce/contants.dart';
import 'package:flutter/material.dart';
import 'cartitems.dart';
import 'product.dart';

class cart extends StatelessWidget {
  const cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          width: 200,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "your cart",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "4 items",
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              Text("${demoProducts.length}items")
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  SizedBox(
                    width: 90,
                    child: AspectRatio(
                      aspectRatio: 0.88,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xfff5f6f9),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(democarts[0].product!.images[0]),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        democarts[0].product!.title.toString(),
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        maxLines: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text.rich(
                        TextSpan(
                            text: "\$${democarts[0].product!.price.toString()}",
                            style: TextStyle(
                                color: kprimarycolor,
                                fontWeight: FontWeight.w600),
                            children: [
                              TextSpan(
                                  text:
                                      " x${democarts[0].product!.noOfitems.toString()}",
                                  style: TextStyle(color: Colors.grey))
                            ]),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 90,
                    child: AspectRatio(
                      aspectRatio: 0.88,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xfff5f6f9),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(democarts[2].product!.images[0]),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        democarts[2].product!.title.toString(),
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        maxLines: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text.rich(
                        TextSpan(
                            text: "\$${democarts[2].product!.price.toString()}",
                            style: TextStyle(
                                color: kprimarycolor,
                                fontWeight: FontWeight.w600),
                            children: [
                              TextSpan(
                                  text:
                                      " x${democarts[2].product!.noOfitems.toString()}",
                                  style: TextStyle(color: Colors.grey))
                            ]),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 25),
            //   child: Row(
            //     // crossAxisAlignment: CrossAxisAlignment.center,
            //     // mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       SizedBox(
            //         width: 90,
            //         child: AspectRatio(
            //           aspectRatio: 0.88,
            //           child: Container(
            //             padding: EdgeInsets.all(10),
            //             decoration: BoxDecoration(
            //               color: Color(0xfff5f6f9),
            //               borderRadius: BorderRadius.circular(15),
            //             ),
            //             child: Image.asset(democarts[0].product!.images[0]),
            //           ),
            //         ),
            //       ),
            //       SizedBox(
            //         width: 20,
            //       ),
            //       Column(
            //         children: [
            //           Text(
            //             democarts[0].product!.title.toString(),
            //             style: TextStyle(
            //               fontSize: 16,
            //               color: Colors.black,
            //             ),
            //             maxLines: 2,
            //           ),
            //           SizedBox(
            //             height: 10,
            //           ),
            //           Text.rich(
            //             TextSpan(
            //                 text: "\$${democarts[0].product!.price.toString()}",
            //                 style: TextStyle(
            //                     color: kprimarycolor,
            //                     fontWeight: FontWeight.w600),
            //                 children: [
            //                   TextSpan(
            //                       text:
            //                           " x${democarts[0].product!.noOfitems.toString()}",
            //                       style: TextStyle(color: Colors.grey))
            //                 ]),
            //           ),
            //         ],
            //       )
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 174,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(30)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, -15),
                  blurRadius: 20,
                  color: Color(0xffdadada).withOpacity(0.15)),
            ]),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color(0xfff5f6f9),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.receipt,
                      color: kprimarycolor,
                    ),
                  ),
                ),
                Container(
                  height: 10,
                ),
                SizedBox(
                  width: 150,
                ),
                Text(
                  "Add voucher code",
                  style: TextStyle(fontSize: 15),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: Colors.grey,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Total",
                      ),
                      Text(
                        "\$337.15",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  SizedBox(
                    width: 190,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor: kprimarycolor),
                        onPressed: () {},
                        child: Text("Check out")),
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
