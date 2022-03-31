import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mian/forgot_password.dart';

Widget buildLoged(width, height,BuildContext context){

  return Container(
    height: height -170,
    width: width*0.6,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20)
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: height*0.1),
        Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              width: width*0.6,
              decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                  const SizedBox(height: 10),
                  const Text(
                    "ITG Demo",
                    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10,),
                  TextField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.account_circle_rounded),
                        label: const Text("User name"),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 1,
                            color: Colors.grey
                        ),borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: "ymohammad@itgsolutions",
                    ),
                    style: const TextStyle(fontSize: 15),
                  ),
                  const SizedBox(height: 20,),
                  TextField(
                    enableInteractiveSelection:true ,
                      obscureText: true,
                    obscuringCharacter: '*',
                    style: const TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                      iconColor: Colors.blue,
                        prefixIcon: const Icon(Icons.lock, size: 20,),
                        label: const Text("Password"),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 1,
                            color: Colors.grey
                        ),borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: "*********",
                    )
                  ),
                  const SizedBox(height: 10,),
                  TextButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>const ForgotPassword()));},
                    child: const Text(
                      "forgot password", style: TextStyle(color: Colors.green),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  InkWell(
                    onTap: (){ },
                    child: Container(
                      height: 30,
                      width: 120,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.orangeAccent.shade700
                      ),
                      child: const Text("Sign In",style: TextStyle(color: Colors.white,fontSize: 15),),
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
        InkWell(
          onTap: (){ },
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: AssetImage("images/Finger/Group 4311.png"),
                    fit: BoxFit.cover
                )
            ),
          ),
        ),
        const Text("Place your finger to login", style: TextStyle(color: Colors.blue,fontSize: 10)),
        const SizedBox(height: 23),
        const Text("WavDMS ®3.0 ®2021 INTEGRATED TECHNOLOGY GROUP", style: TextStyle(color: Colors.blue,fontSize: 9)),



      ],
    ),
  );
}
