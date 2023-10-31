import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myproject/core.dart';


class WelcomeView extends StatelessWidget{
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Images/Logo.jpeg'),
                fit: BoxFit.fill,

              )
            ),
          ),
          Container(
            height: Get.height,
            width: Get.width,
            color: Colors.transparent.withOpacity(0.7),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 95, vertical: 0),
              
              child: Column(
                
                children: [
                  const SizedBox(height: 30),
                  RichText(
                    
                      text: const TextSpan(
                          text: 'FIND YOUR ROOMMATE',
                          
                          style: TextStyle(
                            fontFamily: "Bebas",
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                            letterSpacing: 3
                            
                            ),
                          children: <TextSpan>[
                        
                        
                    
                      ],

                  ),
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: const[
                        Text(
                          "Welcome",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height:17),
                        
                  
                      ],
                    ),
                  ),
                  const SizedBox(height:30),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      height: 50,
                      width: Get.width * 0.7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: Text(
                          "Make a new account",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),


                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginView()),
                      );
                    }, 
                    child: Container(
                      height: 50,
                      width: Get.width * 0.7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.transparent,
                        border: Border.all(width: 2, color: Colors.white),

                      ),
                      child: const Center(
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
                    )

                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}