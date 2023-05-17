import 'package:flutter/material.dart';
import 'package:getaxfirbase/logout.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenHom extends StatefulWidget {
  final String email;

  ScreenHom({required this.email});

  @override
  State<ScreenHom> createState() => _ScreenHomState();
}

class _ScreenHomState extends State<ScreenHom> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Column(
        children: [
          Container(
            width: double.maxFinite,

            height: 390,
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30)
                )
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.maxFinite,

                      height: 310,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30)
                          )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          CircleAvatar(

                            backgroundImage: NetworkImage("https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt86530fbf96d161a1/637f4d67e6fc0b1059f24d7b/Becks.jpg?auto=webp&format=pjpg&width=640&quality=60",),
                            radius: 75,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: ListTile(
                              title: Center(child: Text(widget.email,style: GoogleFonts.bangers(fontSize: 30,color: Colors.black),)),
                              subtitle: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Center(child: Text("Football Player",style: GoogleFonts.roboto(fontSize: 15,),)),
                              ),
                            ),
                          ),

                        ],
                      ),
                    )

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [


                      Column(
                        children: [
                          Text("000",style: GoogleFonts.oswald(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 23),),
                          Text("FOLLOWERS",style: TextStyle(color: Colors.white54,fontSize: 13),),
                        ],
                      ),
                      Column(
                        children: [
                          Text("000",style: GoogleFonts.oswald(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 23),),
                          Text("FOLLOWERS",style: TextStyle(color: Colors.white54,fontSize: 13),),
                        ],
                      ),
                      Column(
                        children: [
                          Text("000",style: GoogleFonts.oswald(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 23),),
                          Text("FOLLOWERS",style: TextStyle(color: Colors.white54,fontSize: 13),),
                        ],
                      ),





                    ],
                  ),
                )

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.chat_bubble_outline_sharp),
                          Text("chat")
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.add,color: Colors.blue,),
                          Text("add")
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.location_on_outlined,color: Color(0xffDF674E),),
                          Text("location")
                        ],
                      )
                    ],
                  ),
                  Container(height: 1,
                      width:300,color: Colors.black26),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.person_add_alt_outlined,color: Color(0xffDF674E),),
                          Text("friends")
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Settings(),));

                          },icon:Icon(Icons.settings)),
                          Text("settings")
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.notification_important_outlined,color: Colors.blue),
                          Text("notification")
                        ],
                      )
                    ],
                  )
                ],
              ),

              height: 230,
              decoration: BoxDecoration(
                  color: Color(0xfff6f6f6),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)

                  )
              ),
            ),
          ),


        ],
      ),
    );
  }
}
