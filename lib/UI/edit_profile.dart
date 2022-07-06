import 'package:course/UI/profile.dart';
import 'package:course/btn.dart';
import 'package:course/txtfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({ Key? key }) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(108, 99, 255, 1),
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back)),
        title: Text("Edit profile",
        ),       
      ),
      body: Container(
        width: Get.size.width,
        height: Get.size.height,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 120,
              width: 120,
              child: Stack(
                children: [
                  InkWell(
                    onTap: (){},
                    child: Container(
                      height: 120,
                      width: 120,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("images/course.png")),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color.fromRGBO(230, 88, 62, 1),
                          width: 2),

                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(230, 88, 62, 1),
                          shape: BoxShape.circle),
                          width: 40,
                          height: 40,
                          alignment: Alignment.center,
                          child: Icon(Icons.camera_alt,
                          color: Colors.white,
                          size: 24,
                      )),
                    ),
                    ],
              ),
            ),

            SizedBox(height: 25),
            TxtField(inputType: TextInputType.text, hintText: "Full names", obscureText: false),
            SizedBox(height: 15),
            TxtField(inputType: TextInputType.emailAddress, hintText: "Email", obscureText: false),
            SizedBox(height: 25),
            Btn(text: "Save details", onPressed: (){
              Get.to(() => Profile());
            }),
            SizedBox(height: 25),
          ],
        ),
      ),
      
    );
  }
}