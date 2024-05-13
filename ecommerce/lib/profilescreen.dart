import 'package:ecommerce/contants.dart';
import 'package:ecommerce/enums.dart';
import 'package:ecommerce/home_screen.dart';
import 'package:flutter/material.dart';

class profilescreen extends StatefulWidget {
  const profilescreen({super.key});

  @override
  State<profilescreen> createState() => _profilescreenState();
}

class _profilescreenState extends State<profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "profile",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: Stack(
                fit: StackFit.expand,
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/myimage.jpeg"),
                  ),
                  Positioned(
                    right: -10,
                    bottom: 0,
                    child: SizedBox(
                      height: 38,
                      width: 38,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  side: BorderSide(color: Colors.white)),
                              backgroundColor: Colors.grey.shade200),
                          onPressed: () {},
                          child: Icon(
                            Icons.camera_enhance_rounded,
                            color: Colors.grey,
                            size: 15,
                          )),
                    ),
                  )
                ],
              ),
            ),
            // SizedBox(
            //   height: 20,
            //   width: double.infinity,
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(
            //         horizontal: 20, vertical: 10),
            //     child: ElevatedButton(
            //         style: ElevatedButton.styleFrom(
            //             backgroundColor: Colors.grey),
            //         onPressed: () {},
            //         child: Row(
            //           children: [Icon(Icons.person)],
            //         )),
            //   ),
            // )

            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        backgroundColor: Colors.white.withOpacity(0.8)),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: kprimarycolor,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "My Account",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 18,
                        )
                      ],
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        backgroundColor: Colors.white.withOpacity(0.8)),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.notifications,
                          color: kprimarycolor,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Notifications",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        SizedBox(
                          width: 145,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 18,
                        )
                      ],
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        backgroundColor: Colors.white.withOpacity(0.8)),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.settings,
                          color: kprimarycolor,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Settings",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        SizedBox(width: 175),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 18,
                        )
                      ],
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        backgroundColor: Colors.white.withOpacity(0.8)),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: kprimarycolor,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "My Account",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 18,
                        )
                      ],
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        backgroundColor: Colors.white.withOpacity(0.8)),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout,
                          color: kprimarycolor,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Log Out",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        SizedBox(
                          width: 170,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 18,
                        )
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: customnavigationbar(
        selectedmenu: menustate.profile,
      ),
    );
  }
}

class customnavigationbar extends StatelessWidget {
  const customnavigationbar({this.selectedmenu});
  final menustate? selectedmenu;

  @override
  Widget build(BuildContext context) {
    final inactieIconColor = Color(0xffb6b6b6);
    return Container(
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -15),
                blurRadius: 20,
                color: Color(0xffdadada).withOpacity(0.15))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => home_screen()));
            },
            icon: Icon(
              Icons.shop,
              color: menustate.shop == selectedmenu
                  ? kprimarycolor
                  : inactieIconColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border_outlined,
              color: menustate.favourite == selectedmenu
                  ? kprimarycolor
                  : inactieIconColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chat,
              color: menustate.message == selectedmenu
                  ? kprimarycolor
                  : inactieIconColor,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => profilescreen()));
            },
            icon: Icon(
              Icons.person,
              color: menustate.profile == selectedmenu
                  ? kprimarycolor
                  : inactieIconColor,
            ),
          )
        ],
      ),
    );
  }
}
