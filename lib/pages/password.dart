// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordView extends StatelessWidget{
  const ForgotPasswordView({super.key});



  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerWidget(),
            bodyForm(),
            footerButton()
          ],
        ),
      ),
    );
  }

  Widget footerButton() {
    return Padding(
      padding: const EdgeInsets.only(top : 20),
      child: Center(
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(7)
            
                      ),
                      height: 50,
                      width: Get.width * 0.5,
                      child: const Center(
                        child: Text(
                          "Submit",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      ),
                    ),
                    TextButton(
                    onPressed: () => Get.back(),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.white),
            
                      ),
                      height: 50,
                      width: Get.width * 0.5,
                      child: const Center(
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      ),
                    ),
                ],
              ),
            ),
    );
  }

  Widget bodyForm() {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Align(
                  alignment: Alignment.topLeft,
                  child:Padding(
                    padding: EdgeInsets.only(top:20),
                  
                  
                child: Text(
                 "Email",
                 style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 14, 2, 2),
                  fontWeight: FontWeight.bold,
                ),
                ),
                ),
                ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "*****@gmail.com",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color:Color.fromARGB(255, 11, 1, 1)
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 7, 3, 3),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          );
  }

  Widget headerWidget() {
    return Stack(
            children: [
              Container(
                height: Get.height * 0.55,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/Images/Logo.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
                
              ),
              Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end:Alignment.topCenter,
                  colors: [
                    Colors.grey,
                    Colors.transparent,
                  ],
                  ),
                ),
                height: Get.height * 0.55 ,
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      RichText(
                        text: const TextSpan(
                          text: 'Share Space',
                          style: TextStyle(
                            fontFamily: "Bebas", fontSize: 30, letterSpacing: 5,
                        ),
                        
                      ),
                      ),
                      const Spacer(),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                             Text(
                              "Forgot Password",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                      
                      
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Reconnect, Rethink, Rediscover - Your Home Awaits.",
                              style: TextStyle(
                                fontSize: 19,
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                    ],
                  ),
                ),
              ),
            ],
          );
  }
}

