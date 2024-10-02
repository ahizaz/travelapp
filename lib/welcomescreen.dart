import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelapp/home_screen.dart';
class Welcomescreen extends StatefulWidget {
  const Welcomescreen({super.key});

  @override
  State<Welcomescreen> createState() => _WelcomescreenState();
}

class _WelcomescreenState extends State<Welcomescreen> {
  var height,width;
  @override
  Widget build(BuildContext context) {
    height=MediaQuery.of(context).size.height;
    width=MediaQuery.of(context).size.width;
    return Scaffold(
      body:Stack(children: [Container(
        height: height,
        width: width,
        color:Colors.white,
        child: Image.asset("images/splash.jpg",fit:BoxFit.cover,),



      ),
        Align(
          alignment:Alignment.bottomCenter,
          child:SizedBox(

            height: height *0.32,
            width: width,
            child:Column(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                Text("Let's Begin the Journey",
                  style:GoogleFonts.lexend(
                    fontSize: width*0.058,
                    fontWeight:FontWeight.w500,
                    color:Colors.white,
                  ),

                ),
                Text("Travel Good,Life Good",
                  style:GoogleFonts.lexend(

                    fontSize: width*0.058,
                    fontWeight:FontWeight.w500,
                    color:Colors.white,
                  ),




                ),
                SizedBox(height:height* 0.02,),

                InkWell(onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
                },
                  child: Container(
                    height: height*0.065,
                    width: width *0.75,


                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(50),
                      color:Colors.white,
                    ),
                    child:Center(
                      child:Text(

                        "Journey",
                        style:GoogleFonts.lexend(
                          color:Colors.black,
                          fontSize: width*0.05,
                          fontWeight: FontWeight.w500,
                          letterSpacing:1,

                        ),
                      ),
                    ),
                  ),


                ),
              SizedBox(
                height: height*0.02,
              ),

          Expanded(

              child:

              TextButton(onPressed: (){}, child:Text("Want to Create Account?",
              style: GoogleFonts.lexend(
                fontSize:width*0.04,
                fontWeight: FontWeight.w400,
                color:Colors.white,

              ),

              ) ),),

              ],

            ),
          ),


        )



      ],),
    );
  }
}
