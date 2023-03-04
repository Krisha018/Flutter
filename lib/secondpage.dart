import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:dots_indicator/dots_indicator.dart';
import 'dart:math';
import 'dart:async';

enum DotPosition {
  topLeft,
  topCenter,
  topRight,
  bottomLeft,
  bottomCenter,
  bottomRight
}

void main() => runApp(SecondPage());

class SecondPage extends StatefulWidget {

  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int currentIndex = 0;

  List<dynamic> _image = [];

  Future<http.Response> fetchImages(context) async {
    var response = await http.get(
        Uri.parse('https://630ecc12498924524a7fbab3.mockapi.io/faculties'));
    return response;
  }

  @override
  void initState() {
    super.initState();
    fetchImages(context).then((value) {
      setState(() {
        _image = value as List;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: FutureBuilder<http.Response>(
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Stack(children: [
                Container(
                  alignment: Alignment.topCenter,
                  child: CarouselSlider.builder(
                    itemCount: jsonDecode(snapshot.data!.body).length,
                    itemBuilder: (context, index, realIndex) {
                      // Column(
                      //   children: [
                      //     const SizedBox(height: 16.0),
                      //
                      //        DotsIndicator(
                      //          itemCount: 4,
                      //          dotPosition: DotPosition.bottomCenter,
                      //          increasedColor: Color(0x99FFFFFF),
                      //          dotBgColor: Colors.transparent,
                      //          reversed: true,
                      //        ),
                      //
                      //   ],
                      // );

                      return Image.network(
                        (jsonDecode(snapshot.data!.body)[index]['Image'])
                            .toString(),
                        fit: BoxFit.cover,
                        width: 1000,
                      );
                    },
                    options: CarouselOptions(
                      autoPlay: true,
                      viewportFraction: 1,
                      height: 280,
                    ),
                  ),
                ),
                // DotsIndicator(
                //   dotsCount: 4,
                //   position: currentIndex.toDouble(),
                // ),

                // child: Carousel(
                //   dotSize: 20,
                //   dotSpacing: 30,
                //   dotPosition: DotPosition.bottomCenter,
                //   dotIncreasedColor: Color(0x99FFFFFF),
                //   dotBgColor: Colors.transparent,
                //   images: [
                //     Image.asset(
                //       "assets/images/kinds-of-makeup-brushes-1568872729.jpg",
                //       fit: BoxFit.cover,
                //     ),
                //     Image.asset(
                //         "assets/images/4c2461774cafdfd192ad3031f0a4811f.jpg",
                //         fit: BoxFit.cover),
                //     Image.asset(
                //         "assets/images/f1b4561da12adef26e76e4850aeec35b.jpg",
                //         fit: BoxFit.cover),
                //     Image.asset(
                //         "assets/images/a346161f25b071e5ccce0fda30951f6e.jpg",
                //         fit: BoxFit.cover),
                //   ],
                // ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 300.0, left: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipOval(
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(35), // Image radius
                            child: Image.asset(
                                'assets/images/08b8a9c74ce182fed68948dac1096dfa.jpg',
                                fit: BoxFit.cover),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: ClipOval(
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(30), // Image radius
                              child: Image.asset(
                                  'assets/images/c5785dc838c5265378ff7d8beff92fcf.jpg',
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 29.0),
                          child: ClipOval(
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(30), // Image radius
                              child: Image.asset(
                                  'assets/images/f7b9553b889de4294e471a333dd664c2.jpg',
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 39.0),
                          child: ClipOval(
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(30), // Image radius
                              child: Image.asset(
                                  'assets/images/98051433b3d983edd12f0c0970d711c4.jpg',
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 390.0, right: 10, left: 20),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "LOREM IPSUM 00400",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 285.0, left: 0, right: 5),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "If it makes you feel beautiful, then do it.",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 20, top: 0, left: 5),
                            child: Container(height: 20,
                              child: Row(
                                children: [
                                  Image(
                                    image: AssetImage(
                                      "assets/images/right.png",
                                    ),
                                    height: 23,
                                    color: Colors.pinkAccent,
                                  ),
                                  Text(
                                    "UF LABORT AT DO",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 0, top: 630, left: 22),
                  child: Container(
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage(
                            "assets/images/right.png",
                          ),
                          height: 23,
                          color: Colors.pinkAccent,
                        ),
                        Text(
                          "SIO DO WITH MOD",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(bottom: 0, top: 485, left: 19),
                      child: Container(
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage(
                                "assets/images/right.png",
                              ),
                              height: 23,
                              color: Colors.pinkAccent,
                            ),
                            Text(
                              "LOREM IPSUM 00400",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 0, top: 560, left: 18),
                  child: Container(
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage(
                            "assets/images/right.png",
                          ),
                          height: 23,
                          color: Colors.pinkAccent,
                        ),
                        Text(
                          "CONSECUTIVE AIDS",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 478.0, left: 300),
                  child: Column(
                    children: [
                      Container(
                        child: const Text(
                          '0.00',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 700, left: 300),
                  child: Container(
                    child: Text(
                      '0.00',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 550.0, left: 300),
                  child: Container(
                    child: Text(
                      '0.00',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 620.0, left: 300),
                    child: Container(
                      child: Text(
                        '0.00',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    )),
              ]);
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
          future: fetchImages(context),
        ),
      ),
    );
  }
}

// Container(
// decoration: BoxDecoration(
// image: DecorationImage(
// image: AssetImage(
// "assets/images/kinds-of-makeup-brushes-1568872729.jpg"),
// // <-- BACKGROUND IMAGE
// fit: BoxFit.cover,
// ),
// ),
// height: 270,
// width: 1300,
// ),
