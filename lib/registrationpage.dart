import 'package:flutter/material.dart';
import 'package:getaxfirbase/getxmain.dart';
import 'package:getaxfirbase/loginpage.dart';
import 'package:google_fonts/google_fonts.dart';



class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
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
                height: size.height * 0.3,
                child: Stack(
                  children: <Widget>[
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [

                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: SizedBox(height: 170,
                                width:double.maxFinite,

                                child: Image(
                                    image:
                                    AssetImage("images/reg.png"))),
                          ),
                        ],
                      ),
                      height: size.height * 0.3,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(60),
                              bottomRight: Radius.circular(60))),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text("Sigh up",
                    style: GoogleFonts.pacifico(
                        color: Colors.black, fontSize: 35)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 45,
                  child: TextField(

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
                    controller: emailcontroller,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xfff6f6f6),
                        focusedBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        disabledBorder: InputBorder.none,
                        labelText: "Email",
                        prefixIcon: Icon(Icons.email_outlined),
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
                        suffixIcon:  IconButton(
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
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 45,
                  child: TextField(
                    obscureText: passworedVisible,

                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xfff6f6f6),
                        focusedBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        disabledBorder: InputBorder.none,
                        labelText: "Conform Password",
                        prefixIcon: Icon(Icons.lock_outline_rounded),
                        suffixIcon:  IconButton(
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
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: double.maxFinite,
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: ElevatedButton(
                      onPressed: () {
                        AuthController.instance.registar(emailcontroller.text.trim(), passwordcontroller.text.trim());

                      },
                      child: Text("Sigh up"),
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStatePropertyAll(Colors.blue),
                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18)))),
                    ),
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>LoginPage() ,));
                  },
                  child: Text("Dont Have an Account? Sigh in"))
            ])
          ],
        ),
      ),
    );
  }
}
