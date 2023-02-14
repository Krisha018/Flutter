import 'package:flutter/material.dart';


class MyButton extends StatelessWidget {
  final Function()? onTap;
  const MyButton({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      child:Container(
        padding:const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Center(
          child: Text("REGISTER",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,

            ),
          ),
        ),
      ),
    );
  }
}
