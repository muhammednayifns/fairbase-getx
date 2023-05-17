import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getaxfirbase/homepage.dart';

import 'loginpage.dart';

class AuthController extends GetxController{
  static AuthController instance=Get.find();
//  all page access
late Rx<User?> _user;
FirebaseAuth auth=FirebaseAuth.instance;
@override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user,_initialScreen);
  }
  _initialScreen(User? user){
  if(user==null){
    Get.offAll(()=>LoginPage());

  }
  else{
    Get.offAll(()=>ScreenHom(email:user.email!));
  }

  }
  void registar(String email,password)async{
  try{
    await auth.createUserWithEmailAndPassword(email: email, password: password);
    print(email);
    print(password);

  }
  catch(e){
    Get.snackbar("About User", "Thats email address already registered",
      backgroundColor: Colors.red,
      snackPosition: SnackPosition.BOTTOM,
      titleText: Text(
        "Account creation failed"
      ),

    );
  }
  }
  void login(String email,password)async{
    try{
      await auth.signInWithEmailAndPassword(email: email, password: password);

    }
    catch(e){
      Get.snackbar("About Login", "Login",
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
              "Login failed"
          ),

      );
    }
  }

void logout()async{
  await auth.signOut();
}

}