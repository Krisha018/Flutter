import 'package:flutter/material.dart';
import 'package:screenpage_project/components/my_textfield.dart';
import 'package:screenpage_project/firstpage.dart';



class ThirdPage extends StatefulWidget {
  ThirdPage({Key? key}) : super(key: key);
  final OPERATION1Controller = TextEditingController();
  final OPERATION2Controller = TextEditingController();

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  get OPERATION2Controller => null;

  get OPERATION1Controller => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: Stack(children: [
          Column(
            children: [
              Container(height: 55,width: 540,
                alignment: Alignment.topCenter,

                margin: EdgeInsets.only(top: 530),
                child: Center(
                  child: MyTextField(
                    controller: OPERATION1Controller,
                    hinText: 'OPERATION 1',
                    obscureText: false,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30.0, top: 360),
            child: Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: IconButton(
                icon: const Icon(Icons.arrow_drop_down),
                iconSize: 40,
                color: Colors.grey[500],
                onPressed: () {

                },
              ),
            ),
          ),
          Container(height: 55,width: 540,alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 620),

            child: Center(
              child: MyTextField(
                controller: OPERATION2Controller,
                hinText: 'OPERATION 2 ',
                obscureText: true,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30.0, top: 530),
            child: Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: IconButton(
                icon: const Icon(Icons.arrow_drop_down),
                iconSize: 40,
                color: Colors.grey[500],
                onPressed: () {},
              ),
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 10,
                ),
                child: Center(
                  child: Container(
                    child: Expanded(
                        child: Column(children: [
                      Center(
                        child: Stack(children: [
                          Container(
                            margin: EdgeInsets.only(top: 25,),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10, bottom: 10, top: 40),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Icon(
                                  Icons.circle,
                                  color: Color(0xFFF48FB1),
                                  size: 50,
                                ),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 70),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 10, left: 60),
                                  child: Text(
                                    'LOREM  IPSUM',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 40),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]),
                      ),
                      Center(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 0),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    right: 10.0, left: 240, top: 90),
                                child: Expanded(
                                  child: Text(
                                    'LOREM IPSUM COLOR KIT',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              height: 190.0,
                              width: 700,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/bf707f6cc88173eda128332392131d41.jpg"),
                                      fit: BoxFit.fill)),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 2, bottom: 10),
                              child: Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10.0, left: 10),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 80,
                                        width: MediaQuery.of(context).size.width,
                                        child: Row(

                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(

                                              child: ClipOval(
                                                child: SizedBox.fromSize(
                                                  size: Size.fromRadius(40),
                                                  // Image radius
                                                  child: Image.asset(
                                                      'assets/images/08b8a9c74ce182fed68948dac1096dfa.jpg',
                                                      fit: BoxFit.cover),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(left: 20),
                                              child: Container(
                                                child: ClipOval(
                                                  child: SizedBox.fromSize(
                                                    size: Size.fromRadius(30),
                                                    // Image radius
                                                    child: Image.asset(
                                                        'assets/images/c5785dc838c5265378ff7d8beff92fcf.jpg',
                                                        fit: BoxFit.cover),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(left: 20.0),
                                              child: Container(
                                                child: ClipOval(
                                                  child: SizedBox.fromSize(
                                                    size: Size.fromRadius(30),
                                                    // Image radius
                                                    child: Image.asset(
                                                        'assets/images/f7b9553b889de4294e471a333dd664c2.jpg',
                                                        fit: BoxFit.cover),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(left: 20.0),
                                              child: Container(
                                                child: ClipOval(
                                                  child: SizedBox.fromSize(
                                                    size: Size.fromRadius(40),
                                                    // Image radius
                                                    child: Image.asset(
                                                        'assets/images/03d8ab0187a0a338fe4b655671c5167c.jpg',
                                                        fit: BoxFit.cover),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 80,
                                        width: MediaQuery.of(context).size.width,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left: 10.0),
                                              child: Container(
                                                child: ClipOval(
                                                  child: SizedBox.fromSize(
                                                    size: Size.fromRadius(30),
                                                    // Image radius
                                                    child: Image.asset(
                                                        'assets/images/98051433b3d983edd12f0c0970d711c4.jpg',
                                                        fit: BoxFit.cover),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 25.0),
                                              child: Container(
                                                child: ClipOval(
                                                  child: SizedBox.fromSize(
                                                    size: Size.fromRadius(30),
                                                    // Image radius
                                                    child: Image.asset(
                                                        'assets/images/3f70929927e72a4d51ccc0d8d4b3fac3.jpg',
                                                        fit: BoxFit.cover),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 25.0),
                                              child: Container(
                                                child: ClipOval(
                                                  child: SizedBox.fromSize(
                                                    size: Size.fromRadius(35),
                                                    // Image radius
                                                    child: Image.asset(
                                                        'assets/images/ca605313344bdaa67883510d9332eda7.jpg',
                                                        fit: BoxFit.cover),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 25.0),
                                              child: Container(
                                                child: ClipOval(
                                                  child: SizedBox.fromSize(
                                                    size: Size.fromRadius(35),
                                                    // Image radius
                                                    child: Image.asset(
                                                        'assets/images/d5063d70cf3498852d63c52a138af8ab.jpg',
                                                        fit: BoxFit.cover),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      )
                    ])),
                  ),
                ),
              ),

            ],
          ),

        ]),
      ),
    );
  }
}
