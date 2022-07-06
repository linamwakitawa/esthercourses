import 'package:course/UI/edit_course.dart';
import 'package:course/btn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingleCourse extends StatefulWidget {
  const SingleCourse({ Key? key }) : super(key: key);

  @override
  State<SingleCourse> createState() => _SingleCourseState();
}

class _SingleCourseState extends State<SingleCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .3,
            decoration: BoxDecoration(
              color: Color.fromRGBO(108, 99, 255, 1),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
                foregroundDecoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("images/course.png"))),
                ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 16),
                  Text("Coders at Ameriacn Spaces Kenya",
                  style: Theme.of(context).textTheme.headline6),
                  SizedBox(height: 6),
                  Text("Coding in web and mobile",
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Colors.black45)),
                  SizedBox(height: 30),
                  Text("-A holistic safe space where girls and women interact, share and learn how to use technology to sustain themselves financially. We aim at creating a world where .",
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    color: Colors.black87,
                    letterSpacing: .8,
                    height: 1.2
                  )),
                  SizedBox(height: 35),
                  Btn(text: "Enroll Course", onPressed: (){}),
                  SizedBox(height: 25),
                ],
              ),
            )
          
        ],
      ),),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.to(() => EditCourse());
      },
      backgroundColor: Color.fromRGBO(230, 88, 62, 1),
      child: Icon(Icons.edit,
      color: Colors.white,
      )
        
      ),
      
    );
  }
}