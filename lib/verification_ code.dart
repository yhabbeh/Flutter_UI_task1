import 'package:flutter/material.dart';
import 'package:mian/widget/build_page_requests.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: buildRequest(
          width: width,
          height: height,
          headerText: "We sent a code to your email ",
          description: "Enter the 8-digit verification code sent to \n y******@itgsolutions.com",
          countField: 1,
          textFieldType: ["1 2 3 4 5 6 7 8 "],
          isPassword: [false],
          buttonName: "submit",
          link: true,
          textLink: "Resent code",context: context,buttonNamePage: "newpass"
      ),
    );
  }
}
