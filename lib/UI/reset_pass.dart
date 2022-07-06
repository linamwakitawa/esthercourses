import 'package:course/UI/view_courses.dart';
import 'package:course/btn.dart';
import 'package:course/txtfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class ResetPass extends StatefulWidget {
  const ResetPass({ Key? key }) : super(key: key);

  @override
  State<ResetPass> createState() => _ResetPassState();
}

class _ResetPassState extends State<ResetPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * .09),
              Container(
                height: MediaQuery.of(context).size.height * .3,
                width: MediaQuery.of(context).size.height * .3,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("images/forgotpass.png"))
                ),
              ),
              SizedBox(height: 18),
              Text("Reset Password",
              style: Theme.of(context).textTheme.headline5!.copyWith()),
              SizedBox(height: 30),
              TxtField(inputType: TextInputType.text, hintText: "Enter new password", obscureText: true),
              SizedBox(height: 16),
              TxtField(inputType: TextInputType.text, hintText: "Repeat Password", obscureText: true),
              SizedBox(height: 16),
              Btn(text: "Save new password", onPressed: (){
                Get.to(() => ViewCourses());
              }),
              SizedBox(height: 25),
              
            ],
          ),
        ),
        ),
      
    );
  }
}