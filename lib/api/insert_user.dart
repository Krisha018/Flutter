import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class InsertUserPage extends StatefulWidget {
  InsertUserPage(this.map);

  Map? map;

  @override
  State<InsertUserPage> createState() => _InsertUserPageState();
}

class _InsertUserPageState extends State<InsertUserPage> {
  var formKey = GlobalKey<FormState>();

  var FirstNameController = TextEditingController();

  var LastNameController = TextEditingController();
  var ImageController= TextEditingController();

  @override
  void initState() {
    super.initState();
    FirstNameController.text =
        widget.map == null ? '' : widget.map!['FirstName'];
    FirstNameController.text =
        widget.map == null ? '' : widget.map!['LastName'];
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(hintText: 'Enter FirstName'),
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return "Enter Valid FirstName";
                }
              },
              controller: FirstNameController,
            ),
            TextFormField(
              decoration: InputDecoration(hintText: 'Enter LastName'),
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return "Enter Valid LastName";
                }
              },
              controller: LastNameController,
            ),
            TextFormField(
              decoration: InputDecoration(hintText: 'Enter Image'),
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return "Enter Valid Image";
                }
              },
              controller: ImageController,
            ),
            TextButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    if (widget.map == null) {
                      insertUser()
                          .then((value) => Navigator.of(context).pop(true));
                    } else {
                      updateUser(widget.map!['id'])
                          .then((value) => Navigator.of(context).pop(true));
                    }
                  }
                },
                child: Text('Submit')),
          ],
        ),
      ),
    );
  }

  Future<void> updateUser(id) async {
    Map map = {};
    map["FirstName"] = FirstNameController.text;
    map["LastName"] = LastNameController.text;
    map["Image"]=ImageController.text;


    var response1 = await http.put(
        Uri.parse('https://630ecc12498924524a7fbab3.mockapi.io/faculties/$id'),
        body: map);
    print(response1.body);
  }

  Future<void> insertUser() async {
    Map map = {};
    map["FirstName"] = FirstNameController.text;
    map["LastName"] = LastNameController.text;
    map["Image"]=ImageController.text;

    var response1 = await http.post(
        Uri.parse('https://630ecc12498924524a7fbab3.mockapi.io/faculties'),
        body: map);
    print(response1.body);
  }
}
