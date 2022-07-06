import 'package:course/UI/reset_pass.dart';
import 'package:course/btn.dart';
import 'package:course/txtfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ForgotPass extends StatelessWidget {
  const ForgotPass({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(child: Column(children: [SizedBox(height: MediaQuery.of(context).size.height * .09),
        Container(
          height: MediaQuery.of(context).size.height * .3,
          width: MediaQuery.of(context).size.width * .3,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("images/forgotpass.png")))
          ),
          SizedBox(height: 18),
          Text("Forgot Password",
          style: Theme.of(context).textTheme.headline5!.copyWith()),
          SizedBox(height: 30),
          TxtField(inputType: TextInputType.emailAddress,
           hintText: "Enter your email", obscureText: false),
           SizedBox(height: 16),
           Btn(text: "Reset password", onPressed: (){
             Get.to(() => ResetPass());
           }),
           SizedBox(height: 25),
        ],)) ,
      ),
      
    );
  }
}