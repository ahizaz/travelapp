import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class ShowScreen extends StatefulWidget {
  const ShowScreen({super.key});

  @override
  State<ShowScreen> createState() => _ShowScreenState();
}

class _ShowScreenState extends State<ShowScreen> {
  var height,width;
  @override
  Widget build(BuildContext context) {
    height=MediaQuery.of(context).size.height;
    width=MediaQuery.of(context).size.width;
    return Scaffold(
      body:Container(
     height: height,
        width: width,
        color:Colors.white,
        child:Column(
          children: [
            Container(
              height: height*0.57,
              width: width,
              decoration:BoxDecoration(
                color:Colors.white,
                image:DecorationImage(
                  fit:BoxFit.cover,

                    image:AssetImage(
                      "images/bg.jpg",

                    ),),

                borderRadius:BorderRadius.only(
                  bottomLeft:Radius.circular(35),
                  bottomRight: Radius.circular(35),

                )
              ),
              child:Stack(
                children: [
                  Container(
                    height:height,
                    width: width,
                    decoration:BoxDecoration(
                      color:Colors.black.withOpacity(0.50),
                      borderRadius:BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                      ),
                    ),
                  ),
                  Align(
                    alignment:Alignment.topCenter,
                    child: SizedBox(
                      height: height*0.1,
                      width: width*0.9,
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: height*0.051,
                            width: width*0.1,
                            decoration:BoxDecoration(
                              borderRadius:BorderRadius.all(
                                Radius.circular(10),
                              ),
                              color:Colors.white,

                            ),
                            child:Center(
                              child:Icon(Icons.arrow_back_ios_new,color:Colors.pink,size: width*0.05,),
                            ),
                          ),
                          Container(
                            height: height*0.051,
                            width: width*0.1,
                            decoration:BoxDecoration(
                              borderRadius:BorderRadius.all(
                                Radius.circular(10),
                              ),
                              color:Colors.white,

                            ),
                            child:Center(
                              child:Icon(Icons.search,color:Colors.pink,size: width*0.05,),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child:SizedBox(
                      height: height*0.23,
                      width: width*0.9,
                      child:Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          Text("The Beautiful",style: GoogleFonts.lexend(

                         fontSize: width*0.066,
                            fontWeight: FontWeight.w600,
                            color:Colors.white,


                          ),),
                          Text("London City",style: GoogleFonts.lexend(

                            fontSize: width*0.066,
                            fontWeight: FontWeight.w600,
                            color:Colors.white,


                          ),),
                          SizedBox(
                            height: width*0.02,
                          ),
                          Row(
                            children: [
                            SizedBox(
                              height:width*0.03,
                            ),
                              Icon(Icons.location_on,color:Colors.pink,size:width*0.07,),
                              Text("London",style: GoogleFonts.lexend(
                               fontSize: width*0.038,
                                fontWeight:FontWeight.w500,
                                color:Colors.white,

                              ),)
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(left: width*0.05),

                          child:  RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemSize: 15,
                            unratedColor:Colors.white,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),

                          )

                        ],
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(25),
                    child:Align(
                      alignment: Alignment.bottomRight,
                      child:Icon(
                        Icons.bookmark_border,
                        color:Colors.white,
                        size: width*0.08,
                      ),
                    ),



                  ),
                ],
              ),
            ),
            SizedBox(
              height: height*0.02,
            ),
            Expanded(child: SizedBox(
              width: width*0.9,
              child:Text("The city is filled with history, breathtaking sights and endless tourist attractions. "
                  "If you've always wanted to visit London or know more about this iconic city, this guide is for you.",style:GoogleFonts.lexend(
                fontSize: width*0.038,
                fontWeight: FontWeight.w500,
                color:Colors.grey,


              ) ,
                textAlign:TextAlign.justify,

              ),

            ),),
            Padding(padding: EdgeInsets.only(left: width*0.05),
              child: Row(
                children: [
                  Image.asset(
                    "images/clock.png",
                    height: height*0.032,

                  ),
                  SizedBox(
                    width: width*0.02,
                  ),
                  Text("8Am-9PM",
                  style: GoogleFonts.lexend(
                    fontSize:width*0.038,
                    fontWeight: FontWeight.w500,
                    color:Colors.grey,
                  ),)
                ],
              ),

            ),
            SizedBox(
              height: height*0.01,
            ),
            Padding(padding: EdgeInsets.only(left: width*0.05),
              child:Row(
                children: [
                Image.asset(
                  "images/calendar.png",
                  height: height*0.032,

                ),
                  SizedBox(
                width: width*0.02,
                  ),
                  Text(

                    "Friday-Tues",
                    style:GoogleFonts.lexend(
                      fontSize: width*0.038,
                      fontWeight:FontWeight.w500,
                      color:Colors.grey,
                    ),
                  ),

                ],
              ),

            ),
            SizedBox(height: height*0.01,),
            Padding(padding: EdgeInsets.only(left: width*0.05),
              child:Row(
                children: [
                  Image.asset("images/flight.png",height: height*0.032,),
                  SizedBox(
                    width: width*0.02,
                  ),
              Text(

                "Ticket 2 way",
                style:GoogleFonts.lexend(
                  fontSize: width*0.038,
                  fontWeight:FontWeight.w500,
                  color:Colors.grey,
                )
              ),

                ],
              ),
            
            ),
            SizedBox(height: height*0.01,),
            SizedBox(
              height: height*0.15,
              width: width,
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: height*0.037,
                    width: width*0.33,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border:Border.all(color:Colors.blue,width: 2),
                      
                    ),
                    child:Center(
                      child: Text("\$5000",style: GoogleFonts.lexend(
                        fontSize: width*0.05,
                        fontWeight:FontWeight.w700,
                        color:Colors.pink,
                      ),
                      ),
                    ),
                  ),




                ],

            ),

        ),
        ],
      ),

      ),
    );
  }
}
