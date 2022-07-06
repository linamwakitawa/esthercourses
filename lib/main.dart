import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'UI/login.dart';
import "package:get/get.dart";

void main(){
  Future<void> main() async{
  //--setting up parse initially at the main
//init widget binding for platform bridge

WidgetsFlutterBinding.ensureInitialized();

var keyParseApplicationId = 'rpj4R1vKZfxKQJ1OlA4gOmtgcrChPIVZtpBxDU0f';
var keyParseServerUrl = "https://parseapi.back4app.com/";
var keyParseClientKey= 'Lj82RcrKBICrAl6HBlxquTZCi6VXL9fwVB4qMBvY';
var store= await CoreStoreSembastImp.getInstance(password: "Pwani");

await Parse().initialize(
  keyParseApplicationId,
  keyParseServerUrl,
  clientKey: keyParseClientKey,
  autoSendSessionId: true,
  coreStore: store);

  //--
  }
  runApp(const Main());
}
class Main extends StatelessWidget {
  const Main({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Pwani Teknowgalz Courses',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Login(),
    );
  }
}