import 'package:flutter/material.dart';

class AboutView extends StatelessWidget{
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image:DecorationImage(
              image: AssetImage("roommate.png"),
              fit: BoxFit.cover,
            )),
          )
        ],
      ),
    );
  }
}