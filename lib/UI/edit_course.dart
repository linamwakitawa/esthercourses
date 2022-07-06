import 'package:course/btn.dart';
import 'package:course/txtfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class EditCourse extends StatefulWidget {
  const EditCourse({ Key? key }) : super(key: key);

  @override
  State<EditCourse> createState() => EditCourseState();
}

class EditCourseState extends State<EditCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add/Edit Course"),
        backgroundColor: Color.fromRGBO(108, 99, 255, 1),
      ),
      body: Container(
        width: Get.size.width,
        height: Get.size.height,
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [SizedBox(height: 25),
        TxtField(inputType: TextInputType.text, hintText: "Course title", obscureText: false),
        SizedBox(height: 15),
        TxtField(inputType: TextInputType.text, hintText: "Description", obscureText: false),
        SizedBox(height: 15),
        TxtField(inputType: TextInputType.url, hintText:"Course link", obscureText: false),
        SizedBox(height: 25),

        Btn(text: "Save Details", onPressed: (){
          Navigator.pop(context);
        }),
        SizedBox(height: 25),
        ],),) ,
      ),
    
    );
  }
}