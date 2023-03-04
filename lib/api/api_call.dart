import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'insert_user.dart';

class ApiCall extends StatefulWidget {
  @override
  State<ApiCall> createState() => _ApiCallState();
}

class _ApiCallState extends State<ApiCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "HTTP API",
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
        )),
        actions: [
          InkWell(
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 24,
              ),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return InsertUserPage(null);
                },
              )).then((value) {
                if (value == true) {
                  setState(() {});
                }
              });
            },
          ),
        ],
      ),
      body: FutureBuilder<http.Response>(
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: jsonDecode(snapshot.data!.body.toString()).length,
              itemBuilder: (context, index) {

                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return InsertUserPage(
                            jsonDecode(snapshot.data!.body.toString())[index]);
                      },
                    )).then((value) {
                      if (value == true) {
                        setState(() {});
                      }
                    });
                  },
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    (jsonDecode(snapshot.data!.body.toString())[
                                            index]['FirstName'])
                                        .toString(),
                                    style: TextStyle(fontSize: 20)),
                                Text(
                                    (jsonDecode(snapshot.data!.body.toString())[
                                            index]['LastName'])
                                        .toString(),
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey)),
                                Image.network(
                                    (jsonDecode(snapshot.data!.body.toString())[
                                    index]['Image'])
                                        .toString(),height: 300,width: 300,
                                   ),
                              ],
                            ),
                          ),
                          InkWell(
                            child: Icon(Icons.delete, color: Colors.red.shade300),
                            onTap: () {
                              showDeleteAlert((jsonDecode(
                                  snapshot.data!.body.toString())[index]['id']));
                            },
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: Colors.grey.shade300,
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
        future: getDataFromWebServer(),
      ),
    );
  }

  void showDeleteAlert(id) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Alert!'),
          content: Text('Are you sure want to delete this record?'),
          actions: [
            TextButton(
              onPressed: () async {
                http.Response res = await deleteUserFromWeb(id);
                if (res.statusCode == 200) {
                  setState(() {});
                }
                Navigator.of(context).pop();
              },
              child: Text('Yes'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('No'),
            ),
          ],
        );
      },
    );
  }

    Future<http.Response> deleteUserFromWeb(id) async {
      var response = await http.delete(Uri.parse(
          'https://630ecc12498924524a7fbab3.mockapi.io/faculties/$id'));
      return response;
    }

    Future<http.Response> getDataFromWebServer() async {
      var response = await http.get(
          Uri.parse('https://630ecc12498924524a7fbab3.mockapi.io/faculties'));


      return response;
    }
  }

