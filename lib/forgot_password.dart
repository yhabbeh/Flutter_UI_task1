
import 'package:flutter/material.dart';
import 'package:mian/widget/build_page_requests.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: buildRequest(
          width: width,
          height: height,
          headerText: "Forgot password ?",
          description: "Enter your email address and we'll send you a verification code to reset your password",
          countField: 1,
          textFieldType: ["ymohammad@itgSoulutions"],
          isPassword: [false],
          buttonName: "Reset Password",
           link: false,
          context: context,
          buttonNamePage: "verify"
      ),
    );
  }
}
