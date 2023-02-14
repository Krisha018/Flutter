import 'package:flutter/material.dart';
import 'package:screenpage_project/secondpage.dart';

import 'package:screenpage_project/components/my_textfield.dart';
import 'package:screenpage_project/thirdpage.dart';

class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key);
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();

  get circleRadius => null;

  void REGISTER() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.pinkAccent,
        title: Text(
          style: TextStyle(
            fontSize: 20,
          ),
          'LoremIpsum',
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: IconButton(
              icon: Icon(
                Icons.star,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                // do something
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              icon: Icon(
                Icons.apps,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                // do something
              },
            ),
          )
        ],
        iconTheme: IconThemeData(color: Colors.white, size: 30),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.all(10),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                  )
                ],
                color: Colors.pink,
              ),
              child: Text(
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  'Drawer Header'),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: const Text('SecondPage'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondPage()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: const Text('ThirdPage'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ThirdPage()));
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: Colors.pinkAccent,
                height: 240,
                width: 500,
              ),
              Expanded(child: Container(color: Colors.white)),
            ],
          )),
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(90),
            ),
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 80.0, left: 80),
                    child: Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SizedBox(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: CircleAvatar(
                                radius: 100.0,
                                backgroundColor: Color(0x2FFFFFFF),
                                child: CircleAvatar(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 9.0),
                                    child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 7.0, top: 30),
                                        child: CircleAvatar(
                                          backgroundColor: Color(0xf7adbc),
                                          foregroundColor: Color(0xf7adbc),
                                          foregroundImage: AssetImage(
                                            'assets/images/9d43e24dbf3d7969f0a9d3f1f6fe42a4.jpg',
                                          ),
                                          radius: 19.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  radius: 70.0,
                                  backgroundImage: AssetImage(
                                      'assets/images/02fdc24023503214f2fa72b9e0ad4c9f.jpg'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 280.0),
              child: Column(
                children: [
                  Container(
                    child: Text(
                      "LOREM IPSUM",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 78.0),
            child: Center(
              child: MyTextField(
                controller: firstnameController,
                hinText: 'FIRST NAME',
                obscureText: false,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(top: 230.0),
            child: Center(
              child: MyTextField(
                controller: lastnameController,
                hinText: 'LAST NAME',
                obscureText: false,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 510.0),
            child: Container(
              height: 150,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
              ),
              child: Column(
                children: [

                  Container(
                    height: 49,
                    width: 301,
                    child: ElevatedButton(
                      child: Text(
                        "REGISTER",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.pink),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(55),
                                      side: BorderSide(color: Colors.pink)))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondPage()));
                      },
                    ),
                  ),
                  Container(
                    height: 64,
                    width: 301,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: ElevatedButton(
                          child: Text("BACK".toUpperCase(),
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.all<Color>(Colors.pink),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(55),
                                      side: BorderSide(color: Colors.pink)))),
                          onPressed: () {}),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
