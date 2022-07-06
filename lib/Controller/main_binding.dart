import "package:course/Controller/auth_provider.dart";
import 'package:course/Controller/main_provider.dart';
import 'package:get/get.dart';
class MainBinding implements Bindings {
@override
void dependencies() {
Get.put<AuthProvider>(AuthProvider());
Get.put<MainProvider>(MainProvider());
}
}