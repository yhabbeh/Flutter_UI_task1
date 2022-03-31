
import 'package:flutter/material.dart';
import 'package:mian/widget/build_loged.dart';



class WaveDMSLogIn extends StatefulWidget {
  const WaveDMSLogIn({Key? key}) : super(key: key);

  @override
  State<WaveDMSLogIn> createState() => _WaveDMSLogInState();
}

class _WaveDMSLogInState extends State<WaveDMSLogIn> {

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: width,
            height: height*0.5,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image:AssetImage("images/BG/Group 4658.png"),fit: BoxFit.cover
              ),
            ),
          ),//background
          SizedBox(
            width: width,
            height: height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: height*0.07,),
                Container(
                  width: width*0.40,
                    height: height*0.1,
                    decoration: const BoxDecoration(

                      image: DecorationImage(
                        image: AssetImage("images/Wave/Group 4413.png")
                      )
                    ),
                  ),
                  const SizedBox(height: 30,),
                Stack(
                  children: [
                   buildLoged(width,height,context),
              ],
            ),


              ],
            ),
          ),
          Positioned(
            left: width*0.5-45,
            top : height*0.25-15,
            child: Container(
              width: 90,
              height:90,
              decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          Positioned(
            left: width*0.5-30,
            top : height*0.25 ,
            child: Container(
              width: 60,
              height:60,
              // color: Colors.white,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/ITG/Group 3.png"),
                      fit: BoxFit.cover
                  )

              ),
            ),
          ),
        ],
      ),
    );
  }
}
