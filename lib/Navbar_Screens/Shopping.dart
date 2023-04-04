import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class shopping extends StatefulWidget {
  const shopping({Key? key}) : super(key: key);

  @override
  State<shopping> createState() => _shoppingState();
}

class _shoppingState extends State<shopping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(18.0),
            child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 80.h,),
                  Text("Shop", style: GoogleFonts.nunito(fontSize: 24, fontWeight: FontWeight.bold),),
                  Text("Explore Products & Merchandise",
                    style: GoogleFonts.nunito(color: Color.fromRGBO(255, 255, 255, 0.38), fontSize: 16),),
                  SizedBox(height: 30.h,),

                  Container(
                    height: 60.h, width: 378.w,
                    child: Row(
                      children: [
                        SizedBox( height: 60.h, width: 303.w,
                          child: TextFormField(
                            decoration: InputDecoration(
                                prefixIcon: InkWell(onTap:(){

                                },child: Icon(Icons.search)),
                                hintText: "Search",
                                hintStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.38)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)
                                )
                            ),
                          ),
                        ),
                        //Spacer(),

                        SizedBox(width: 15.w,),
                        SizedBox( height: 60.h, width: 60.w,
                          child: ElevatedButton(onPressed: (){

                          }, child: Center(child: Icon(Icons.shopping_cart_outlined)),
                            style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(186, 94, 239, 1),
                                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                          ), ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40.h,),

                  Text("Trending", style: GoogleFonts.nunito(color: Color.fromRGBO(255, 255, 255, 0.38), fontSize: 16),),
                  SizedBox(height: 20.h,),
                ]
            ),
          ),
        ),
      ),
    );
  }
}
