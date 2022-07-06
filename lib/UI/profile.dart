import 'package:course/UI/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:course/UI/edit_profile.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(108, 99, 255, 1),
        automaticallyImplyLeading: false,
        leading: IconButton(
         icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context)),
          title: Text("My Profile",),
          actions: [
            IconButton(
            icon: Icon(Icons.edit, color: Colors.white),
            onPressed: ((){
              Get.to(() => EditProfile()); 
            }
   ), 
            )],
   ),
      body: Container(
        width: Get.size.width,
        height: Get.size.height,
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 1),
                image: DecorationImage(image: AssetImage("images/course.png"),
                fit: BoxFit.cover)),
              ),
              SizedBox(height: 20),
              Text("Aisha", style: TextStyle(color: Colors.black87, fontSize: 16, fontWeight: FontWeight.bold),),
              SizedBox(height: 5),
              SizedBox(height: 15),
              Container(
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.verified_user,
                  color: Color.fromRGBO(8, 171, 171,1)),
                  title: Text("Mentor",
                  style: TextStyle(fontSize: 15),
                  ),
                  subtitle: Text("Profile type",
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
              )),
              SizedBox(height: 12),
              Container(
                color: Colors.white,
                child: ListTile(leading: Icon(Icons.person,
                color: Color.fromRGBO(8, 171, 171, 1)),
                title: Text("Aisha Abdulkadir",
                style: TextStyle(fontSize: 15),
                ),
                subtitle: Text("Name",
                style: TextStyle(fontSize: 12, color:Colors.black54),
                ),
              )),
              SizedBox(height: 12),
              Container(color: Colors.white,
              child: ListTile(leading: Icon(Icons.email,
              color: Color.fromRGBO(8, 171, 171, 1)),
              title: Text("email@gmail.com", style: TextStyle(fontSize: 15),),
              subtitle: Text("Email", style:TextStyle(fontSize: 12, color: Colors.black54),
              ),
          )),
          SizedBox(height: 12),
            
              ],
          ),
        )),
        
      
    );
  }
}