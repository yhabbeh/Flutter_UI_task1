
import 'package:flutter/material.dart';
import 'package:mian/forgot_password.dart';
import 'package:mian/new_password.dart';
import 'package:mian/verification_%20code.dart';
import 'package:mian/wave_dms_login.dart';

Widget buildRequest({
  required BuildContext context,
  required double width,
  required double height,
  required String headerText,
  required String description,
  required int    countField,
  required List textFieldType,
  required List<bool> isPassword,
  required String buttonName,
  required String buttonNamePage,
  required bool link,
      String ?textLink,
      String ?linkNav,
    }
)
{
  return Container(
    padding: const EdgeInsets.all(20),
    width: width,
    height: height,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:   [
        const Center(
          child: Image(
              image: AssetImage("images/Group 4412.png"),fit: BoxFit.cover),
        ),//img
        const SizedBox(height: 40),
         Text(
           headerText,style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        ),
        const SizedBox(height: 10),
        Text(
          description,
          style: TextStyle(
              fontSize: 15,
              color: Colors.grey.shade600
          ),
        ),
        const SizedBox(height: 20),
        ListView.builder(itemBuilder: (context, index) =>
            SizedBox(
              height: 60,
              child: Column(
                children: [
                  TextField(
                      obscureText: isPassword[index],
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 1,
                          color: Colors.grey
                      ),borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: textFieldType[index],
                  )
        ),

                ],
              ),
            ),
         shrinkWrap: true,
         itemCount: countField,
        ),

        link?
          TextButton(onPressed: (){

            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>const ForgotPassword()));

          },
               child:Text(textLink!,style: const TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.bold),)
                )
        :const SizedBox(height: 0,),

        const SizedBox(height: 20,),
        InkWell(
          onTap: (){
            {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                      (buttonNamePage=="forgot")? const ForgotPassword():
                      (buttonNamePage=="newpass")? const NewPassword():
                      ((buttonNamePage=="verify")? const VerificationCode():const WaveDMSLogIn())
                  )
              );
            }
          },

          child: Container(
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orangeAccent.shade400
            ),
            child:Text(buttonName,style: const TextStyle(color: Colors.white,fontSize: 20),),
          ),
        )
      ],
    ),
  );
}
