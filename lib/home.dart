import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/services.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animated_button_bar/animated_button_bar.dart';
import 'package:animated_react_button/animated_react_button.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:badges/badges.dart' as badges;
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  //To Redirect from Application to Website
  _launchURL() async {
    const url = 'https://www.youtube.com/';
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    return Scaffold(
      backgroundColor: Color(0xFF01D3F6),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/chk.png"), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //Top left container
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 6),

                        //Top left icon
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/health3.png'),
                          radius: 11,
                          backgroundColor: Colors.white,
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 3, right: 30),
                            child: Text(
                              "Next life:",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFF36304C)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 45),
                            child: Text(
                              "15:34",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Color(0xFF36304C)),
                            ),
                          ),
                        ],
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: Icon(
                          Icons.play_circle_fill_rounded,
                          color: Color(0xFF913B94),
                          size: 27,
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 10,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      color: Color(0xFFE8E9ED),
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  height: 45,
                  width: 160,
                ),

                //Top Right Container
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/token.png'),
                          radius: 15,
                          backgroundColor: Colors.white,
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                        "3676",
                        style: TextStyle(
                            color: Color(0xFF36304C),
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      Spacer(
                        flex: 1,
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: Icon(
                          Icons.add_circle_rounded,
                          color: Color(0xFF913B94),
                          size: 27,
                        ),
                      )
                      // CircleAvatar(
                      //   child: Icon(Icons.add_circle_rounded,
                      //       color: Colors.purple[700]),
                      //   radius: 13,
                      //   //backgroundColor: Colors.purple[700],
                      // )
                    ],
                  ),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 10,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      color: Color(0xFFE8E9ED),
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  height: 45,
                  width: 160,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),

            //TITLE TEXT
            Text(
              "GAME",
              style: TextStyle(
                fontFamily: 'LilitaOneRegular',
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 100,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(5, 5),
                    blurRadius: 20.0,
                    color: Color.fromARGB(255, 64, 61, 65),
                  ),
                  Shadow(
                    offset: Offset(5, 5),
                    blurRadius: 20,
                    color: Color(0xFF7B1FA2),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 1)),
            Text(
              "T I T L E",
              style: TextStyle(
                fontFamily: 'LilitaOneRegular',
                letterSpacing: 9,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 60,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(5, 5),
                    blurRadius: 20.0,
                    color: Color.fromARGB(255, 64, 61, 65),
                  ),
                  Shadow(
                    offset: Offset(5, 5),
                    blurRadius: 20,
                    color: Color(0xFF7B1FA2),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30)),
                      //shape: BoxShape.circle,
                      color: Color(0xFF913B94)),
                  height: 75,
                  width: 75,
                  //color: Colors.purple[700],
                  child: IconButton(
                    icon: Icon(
                      Icons.menu_rounded,
                      color: Colors.white,
                    ),
                    alignment: Alignment.center,
                    iconSize: 45,
                    onPressed: () {
                      print("Icon Button clicked");
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.values[1],
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        height: 60,
                        width: 60,
                        //color: Colors.purple[700],
                        child: IconButton(
                          icon: Icon(
                            Icons.settings,
                            color: Color(0xFF913B94),
                          ),
                          alignment: Alignment.center,
                          iconSize: 40,
                          onPressed: () {
                            print("Icon Button clicked");
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        height: 60,
                        width: 60,
                        //color: Colors.purple[700],
                        child: IconButton(
                          icon: Icon(
                            Icons.email_rounded,
                            color: Color(0xFF913B94),
                          ),
                          alignment: Alignment.center,
                          iconSize: 40,
                          onPressed: () {
                            _launchURL();

                            print("Icon Button clicked");
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        height: 60,
                        width: 60,
                        //color: Colors.purple[700],
                        child: AnimatedReactButton(
                            iconSize: 45,
                            defaultColor: Color(0xFF913B94),
                            reactColor: Color(0xFF913B94),
                            defaultIcon: Icons.emoji_events_rounded,
                            showSplash: true,
                            onPressed: () async {
                              //Simulated api/io waiting calls
                              await Future.delayed(Duration(milliseconds: 1));
                              // icon: Icon(
                              //   Icons.emoji_events_rounded,
                              //   color: Colors.purple[700],
                              // ),
                              // alignment: Alignment.center,
                              // iconSize: 40,
                              // onPressed: () {
                              //   print("Icon Button clicked");
                              // },
                            }),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Text("Level 30",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.white)),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30)),
                        //shape: BoxShape.circle,
                        color: Color(0xFF913B94)),
                    height: 75,
                    width: 75,
                    //color: Colors.purple[700],
                    child: IconButton(
                      icon: Icon(
                        Icons.apps_rounded,
                        color: Colors.white,
                      ),
                      alignment: Alignment.center,
                      iconSize: 45,
                      onPressed: () {
                        print("Icon Button clicked");
                      },
                    ),
                  ),
                  Spacer(),
                  AnimatedButton(
                    gradient: LinearGradient(
                        colors: [Color(0xFFFFB80E), Colors.orange]),
                    selectedGradientColor: LinearGradient(
                        colors: [Colors.pinkAccent, Colors.purpleAccent]),
                    height: 75,
                    width: 200,
                    text: 'Play',
                    isReverse: true,
                    selectedTextColor: Colors.white,
                    transitionType: TransitionType.LEFT_TO_RIGHT,
                    textStyle: TextStyle(
                        fontSize: 36,
                        //letterSpacing: 5,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    backgroundColor: Color(0xFFFFB80E),
                    borderColor: Colors.white,
                    borderRadius: 70,
                    borderWidth: 6,
                    onPress: () {},
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30)),
                        //shape: BoxShape.circle,
                        color: Color(0xFF913B94)),
                    height: 75,
                    width: 75,
                    //color: Colors.purple[700],
                    child: IconButton(
                      icon: Icon(
                        Icons.shopping_cart_rounded,
                        color: Colors.white,
                      ),
                      alignment: Alignment.center,
                      iconSize: 45,
                      onPressed: () {
                        print("Icon Button clicked");
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ), //Mainnnnnnn
    );
  }
}
