import 'package:flutter/material.dart';


class IconPage1 extends StatefulWidget {
  const IconPage1({super.key});

  @override
  State<IconPage1> createState() => _IconPage1State();
}

class _IconPage1State extends State<IconPage1> {
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Icon(Icons.add_circle_outline, color: Colors.black, size: 50,),
            IconButton(
              onPressed: () {
                setState(() {
                  flag = !flag;
                });
              },
              icon: Icon(
                Icons.add_circle,
                color: Colors.black,
                size: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}