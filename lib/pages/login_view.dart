// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myproject/core.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            Stack(
              children: [
                backgroundImage(),
              ],
            ),
          
            Stack(
              children: [
                Container(
                  
                  decoration:const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Color.fromARGB(255, 2, 2, 2),
                        Colors.blueGrey,
                      ]
                    ),
                  ),
                  height: Get.height * 0.70,
                  width: Get.width,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        
                        Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const[
                              Text(
                                "Sign In",
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox( height: 10),
                              
                            ],
                          )
            
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical:15),
                          child: Column(
                            children: [
                              Text(
                                "Email",
                                style: TextStyle(color: Colors.white, fontSize: 18),
                              ),
                              TextField(
                                
                                decoration: InputDecoration(
                                  hintText: "****@gmail.com",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white
                                    )
                                  )
                                ),
                              ),
                              SizedBox(
                                height: 20,

                              ),
                              Text(
                                "Password",
                                style: TextStyle(color: Colors.white, fontSize: 18),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: "**********",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white
                                    )
                                  )
                                ),
                              ),
                              SizedBox(height: 15),
                               const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotPasswordView()),
                      );
                    }, 
                    child: Container(
                      height: 18,
                      width: Get.width * 0.7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        color: Colors.transparent,
                        border: Border.all(width: 0, color: Colors.transparent),

                      ),
                      child: Align(
                        alignment: Alignment.centerRight, 
                        child: Transform.translate(
                          offset: Offset(25, -20),
                          
                        child: Text(
                          "Forgot your password?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          
                          ),
                        ),
                        ),

                      ),
                      
                    ),
                    ),
                  TextButton(
                    onPressed: () {}, 
                    child: Container(
                      height: 50,
                      width: Get.width * 0.5,
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.transparent,
                        border: Border.all(width: 2, color: Colors.white),
                       
                      ),
                    
                      
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Transform.translate(
                          offset: Offset(0, 7),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      
                        
                        ),
                        
                      ),
                     
                    ),
                    ),
                    
                          
                              

                            ],
                          ),
                        ),
                      ],
                    )
                  )
                ),
              ],
            ),
          ],
          
          
        ),
      ),
      
    );
    
  }

  Container backgroundImage() {
    return Container(
                height: Get.height * 0.42,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/Images/Logo.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              );
  }
}