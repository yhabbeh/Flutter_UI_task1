import 'package:flutter/material.dart';
import 'package:mian/widget/build_page_requests.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: buildRequest(
          width: width,
          height: height,
          headerText: "Choose new password",
          description: "Create a new password that is at least 8 character",
          countField: 2,
          textFieldType: ["New password", "New password confirmation"],
          isPassword: [true,true],
          buttonName: "submit",
          link: false,

          context: context,
          buttonNamePage: 'WaveDMSLogIn'
      ),
    );
  }
}
