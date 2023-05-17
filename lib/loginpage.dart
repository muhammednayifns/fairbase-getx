import 'package:flutter/material.dart';
import 'package:getaxfirbase/getxmain.dart';
import 'package:getaxfirbase/registrationpage.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homepage.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  bool obsecurtext=true;
  bool passworedVisible=true;



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(

      backgroundColor: Color(0xffffffff),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        reverse: true,
        child: Stack(
          children: [
            Column(children: [
              Container(
                height: size.height * 0.6,
                child: Stack(
                  children: <Widget>[
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 33.0),
                            child: Text("Welcome Back",
                                style: GoogleFonts.pacifico(
                                    color: Colors.white, fontSize: 35)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: SizedBox(height: 250,
                                width:double.maxFinite,

                                child: Image(
                                    image:
                                    AssetImage("images/loginImage.png"))),
                          ),
                        ],
                      ),
                      height: size.height * 0.6-30,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(60),
                              bottomRight: Radius.circular(60))),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 45,
                  child: TextField(
                    controller: emailcontroller,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xfff6f6f6),
                        focusedBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        disabledBorder: InputBorder.none,
                        labelText: "Username",
                        prefixIcon: Icon(Icons.person_outline_rounded),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 45,
                  child: TextField(
                    obscureText: passworedVisible,
                    controller: passwordcontroller,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xfff6f6f6),
                        focusedBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        disabledBorder: InputBorder.none,
                        labelText: "Password",
                        prefixIcon: Icon(Icons.lock_outline_rounded),
                        suffixIcon: IconButton(
                          icon: Icon(passworedVisible?Icons.visibility_off:Icons.visibility),
                          onPressed: () {
                            setState(() {
                              passworedVisible=!passworedVisible;
                            });
                          },
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {}, child: Text("Forogot Password")),
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: ElevatedButton(
                    onPressed: () {
                     AuthController.instance.login(emailcontroller.text.trim(), passwordcontroller.text.trim());

                    },
                    child: Text("Login"),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStatePropertyAll(Colors.blueAccent),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)))),
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Registration(),));
                  },
                  child: Text("Dont Have an Account? Sigh up"))
            ]),
            Padding(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom))

          ],
        ),
      ),
    );
  }
}
