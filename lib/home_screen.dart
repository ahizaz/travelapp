import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelapp/place_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var height,width;


  List iconImages =[
    "images/flight.png",
    "images/condo.png",
    "images/plate.png",
    "images/front-of-bus.png",
    "images/flight.png",
    "images/condo.png",
    "images/plate.png",
    "images/front-of-bus.png",
  ];
  List imgs=[
    "aeroplane.jpg",
    "girltravel.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    height=MediaQuery.of(context).size.height;
    width=MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      resizeToAvoidBottomInset: false,
      body:SingleChildScrollView(
        child: Container(
           height: height,
          width:width,
          color:Colors.white,
          child:Column(
            children: [
              SizedBox(
                height:height*0.045,
        
              ),
              SizedBox(
                height: height*0.07,
                width: width*0.9,
                child:Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Explore",
                          style:TextStyle(
                            fontSize:width*0.049,
                            fontWeight:FontWeight.w600,
                            color:Colors.black,
                          ),
                        ),
                        Text(
                          "Find your life",
                          style:TextStyle(
                            fontSize: width*0.037,
                            fontWeight:FontWeight.w500,
                            color:Colors.grey,
        
                          ),
                        )
                      ],
        
                    ),
                    SizedBox(
                      height:height*0.035,
                    ),
                    Container(
                      height: height*0.055,
                      width: width*0.11,
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(10),
                        color:Colors.white,
                        image:DecorationImage(
                          fit:BoxFit.cover,
                          image:AssetImage("images/girl.jpg"),
                        )
                      ),
                    )
        
                  ],
                ),
              ),
              SizedBox(
                height: 0.5,
              ),
              Container(
                height: height*0.063,
                width: width*0.9,
                decoration:BoxDecoration(
                  color:Colors.blue.withOpacity(0.3),
                  borderRadius:BorderRadius.circular(13),
                ),
                child:Center(
                  child:Padding(
        
                      padding:EdgeInsets.only(left: width*0.03) ,
                    child:TextFormField(
                      style:TextStyle(
                        color:Colors.white,
        
        
        
                      ),
                      autovalidateMode:AutovalidateMode.onUserInteraction,
                      decoration:InputDecoration(
                        border:InputBorder.none,
                        hintText:"Search here....",
                        hintStyle: GoogleFonts.lexend(
                          color:Colors.grey,
                          fontSize: width*0.04,
                        ),
                        prefixIcon:Icon(Icons.search,
                        color: Colors.black,
                          size: width * 0.09,
        
        
                        ),
        
                      ),
                    ),
        
        
                  ),
                ),
                
              ),
              SizedBox(
                height: height*0.035,
              ),
              SizedBox(
                width: width*0.9,
              height: height*0.08,
                child:ListView.builder(
                  scrollDirection:Axis.horizontal,
                    itemCount: iconImages.length,
                    shrinkWrap: true,
        
        
                    itemBuilder: (context,index){
               return   Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 10),
                 child: Card(elevation: 4,
                   shape:RoundedRectangleBorder(
        
                     borderRadius: BorderRadius.circular(10),
                   ),
                   child:Container(
                     height: height*0.038,
                     width: width*0.14,
                     decoration:BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color:Colors.pink,
        
                     ),
                     child:Center(
                       child:Image(
                         height: height*0.04, 
                         image:AssetImage(
                           iconImages[index],
                           
                         ),
                       ),
                     ),
                   ),
                 ),
               );
        
                }),
        
        
              ),
              SizedBox(
                height: height*0.035,
              ),
              SizedBox(
                width: width*0.9,
        
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
        
        
                    Text("All",
                      style: GoogleFonts.lexend(
                        fontSize:width*0.04,
                        fontWeight:FontWeight.w500,
                        color:Colors.blue,
        
        
                      ),),
                    Text("New",
                    style: GoogleFonts.lexend(
                      fontSize:width*0.04,
                      fontWeight:FontWeight.w500,
                      color:Colors.pink,
        
        
                    ),),
                    Text("Tours",
                      style: GoogleFonts.lexend(
                        fontSize:width*0.04,
                        fontWeight:FontWeight.w500,
                        color:Colors.blue,
        
        
                      ),),
                    Text("Asia",
                      style: GoogleFonts.lexend(
                        fontSize:width*0.04,
                        fontWeight:FontWeight.w500,
                        color:Colors.blue,
        
        
                      ),),
                    Text("Adventure",
                      style: GoogleFonts.lexend(
                        fontSize:width*0.04,
                        fontWeight:FontWeight.w500,
                        color:Colors.blue,
        
        
                      ),),
        
        
                  ],
                ),
              ),
              SizedBox(
                height: height*0.035,
              ),
              SizedBox(
                height: height*0.44,
                width: width,
                child:ListView.builder(
                  scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: imgs.length,
        
                    itemBuilder: (context,index){
                return Padding(padding: EdgeInsets.symmetric(
                  horizontal: width*0.05,
                  vertical: height*0.01,
        
        
                ),
                  child:InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowScreen()));
                    },
                    child:Container(
        
                    width: width * 0.6,
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(20),
                        color:Colors.white,
                        image: DecorationImage(
                          fit:BoxFit.cover,
        
                            image: AssetImage("images/${imgs[index]}"),
        
                        ),
                      ),
                    child: Stack(children: [
                      Align(alignment: Alignment.bottomCenter,
        
                      child: SizedBox(
        
                        height: height*0.14,
                        width: width*0.47,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Beautiful",
                            style: GoogleFonts.lexend(
                              fontSize: width*0.043,
                              fontWeight: FontWeight.w600,
                              color:Colors.white,
                            ),
        
        
                            ),
                            Text("London",style:GoogleFonts.lexend(
                              fontSize: width*0.038,
                              fontWeight: FontWeight.w600,
                              color:Colors.white,
                            ),),
                        RatingBar.builder(
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
        
        
        
        
        
        
        
        
        
                          ],
                        ),
                      ),),
                      SizedBox(width: width*0.035,),
        
                    ],),
        
                    ),
                  ),
        
        
                );
        
                }),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar:BottomNavigationBar(
        selectedItemColor: Colors.pink,
         unselectedItemColor:Colors.blue,
          iconSize: 30,
          showSelectedLabels: false,

          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.favorite),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: ""),


      ]),

    ));
  }
}
