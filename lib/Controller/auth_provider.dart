import 'package:course/UI/login.dart';
import 'package:course/utils/utils.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';

class AuthProvider extends GetxController{
  // create a map that will hold the user
 var userDets= {}.obs;
 var parseUser= {}.obs;


static AuthProvider get to => Get.find();
//When this controller is init, always check when the user has changed

@override
 onReady() {
     ever(parseUser, userHandler);
  }

  //-- method to sign up user

  signUpUser({username, password, emailAddress, usertype}) async{
    // show loader
    AppUtils.showLoading();
    
    //use validate if empty method created to validate user inputs
    
    if(
      validateIfEmpty("username", username)|| validateIfEmpty("password", password)|| validateIfEmpty("email", emailAddress)|| validateIfEmpty("userType", usertype)){

        //dismiss dialog
        SmartDialog.dismiss();

        //the function that stops here, won't go down to create the user

        return false;
}

//create a user using ParseUser, add ...set to add extra fiels

var user= ParseUser(emailAddress, password, emailAddress)
 ..set('usertype', usertype)
 ..set('fullnames', username);

 var response= await user.signUp();

 //successful signup

 try{
   if(response.success){
     //get current logged in user
     await getParseUser();
     // stop loader
     AppUtils.showSuccess('Success!');

     //dismissing the loader
     SmartDialog.dismiss();
     return true;
   }
 }
 catch(e)
 {
   AppUtils.showError('An error occurred, please try again later');
   print(e.toString());
 }
 return false;
    }

    //--- end 0f method to sign up user
    //--- method to login user

    loginUser({email, password}) async{
      // show loader
      AppUtils.showLoading();
      //use validate if empty method created to validate user inputs
      if(validateIfEmpty("email", email)|| validateIfEmpty("password", password))
      {
     // dismiss dialog
        SmartDialog.dismiss();
        //the function stops here, won't go down to create the user
        return false;
      }
      try{
        var user = ParseUser(email, password, email);
        var response= await user.login();

        //success login

        if(response.success){
          //get current logged in user
          await getParseUser();
          //stop loader
        AppUtils.showSuccess('Login Successful!');
          //dismissing the loader

          SmartDialog.dismiss();
          return true;
        }
        //check whether the response has an erroe
        else{
          //print(response.error);
          AppUtils.showError(response.error?.message);
         SmartDialog.dismiss();
         return false;

        }
      }
        catch (e){
          SmartDialog.dismiss();
          AppUtils.showError('An error occurred, please try again later');
          print(e.toString());
        }
        return false;
      }
      //--- end of method to login user

      //--- forgot password

      forgotPass({email}) async{
        // show loader
        AppUtils.showLoading();
        // use validate if empty method created to validate user inputs
        if(validateIfEmpty('email',email)) {
          //dismiss dialog

          SmartDialog.dismiss();
          //the function stops here, won't go down to create the user
          return false;

        }
        //creating user object
        try{
          var user= ParseUser(email, "", email);
          var response= await user.requestPasswordReset();
          if(response.success){
            AppUtils.showSuccess('Password reset! Check your email');
            SmartDialog.dismiss();
           return true; 
          }
        } catch (e){
          AppUtils.showError('An error occurred, please try again later');
          SmartDialog.dismiss();
          print(e.toString());
        }
        return false;
      }
     //-- end of forgot password

     /////function to get parse user
     getParseUser() async{
       var user= await ParseUser.currentUser();
       parseUser.value.assignAll((user as ParseUser).toJson());
     }

     ///logout
     
     logoutUser() async{
       //get  the user from parse user from parseUser
      await getParseUser();
       // logout if user is empty

       if(parseUser.isNotEmpty){
         var user = await ParseUser.currentUser();
         await (user as ParseUser).logout();
         parseUser.value.clear();
         update();

       }
     }

     ////whenever the user is empty, go to login screen
    userHandler(user){
      if(user.isEmpty){
        //removes all screen
        Get.offAll(()=> Login());
      }
    }

    //--- validate if empty
    bool validateIfEmpty(fieldName, field){
      if(field.toString().isEmpty)
      {
        AppUtils.showError('Field $fieldName should not be empty');
        return true;

      }
      return false;
    }
      }
    


