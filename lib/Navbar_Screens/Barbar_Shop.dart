import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Creative_cuts.dart';
class Barbar_shop extends StatefulWidget {
  const Barbar_shop({Key? key}) : super(key: key);

  @override
  State<Barbar_shop> createState() => _Barbar_shopState();
}

class _Barbar_shopState extends State<Barbar_shop> {
  @override
  List<String> arrOptions = ['Creative Cuts', 'Sunset Barbar', 'Style Cave'];
  List<String> arrimg = ['assets/img/shop1.png', 'assets/img/shop2.png', 'assets/img/shop3.png'];
  List<String> arrsub = ['Pindi - 34 Kms', 'Irale - 54 Kms', 'Lahore - 21 Kms'];
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(17.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 80.h,),
                  Text("Barbar Shops", style: GoogleFonts.nunito(fontSize: 24, fontWeight: FontWeight.bold),),
                  Text("Find Your Barbar Here",
              style: GoogleFonts.nunito(color: Color.fromRGBO(255, 255, 255, 0.38), fontSize: 16),),
                  SizedBox(height: 30.h,),

                  Container(
                    height: 60.h, width: 378.w,
                    child: Row(
                      children: [
                        SizedBox( height: 60.h, width: 303.w,
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                prefixIcon: InkWell(onTap:(){

                                },child: Icon(Icons.search)),
                                hintText: "Search",
                                suffixIcon: InkWell(onTap:(){

                                },child: Image.asset("assets/img/Filter.png")),
                                hintStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.38)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)
                                )
                            ),
                          ),
                        ),
                        //Spacer(),

                        SizedBox(width: 10.w,),
                        SizedBox( height: 60.h, width: 65.w,
                            child: ElevatedButton(onPressed: (){

                            }, child: Icon(Icons.calendar_month),
                         style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(186, 94, 239, 1),
                             shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(18))),
                            ), ),
                      ],
                    ),
                  ),

                  SizedBox(height: 40.h,),

             Text("Popular Barbers", style: GoogleFonts.nunito(color: Color.fromRGBO(255, 255, 255, 0.38), fontSize: 16),),
                  SizedBox(height: 20.h,),

              ListView.builder(
               shrinkWrap: true, physics: NeverScrollableScrollPhysics(),
                 itemBuilder: (context, int index) =>
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Card(
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                        child: Container(
                          alignment: Alignment.center,
                           height: 90,
                           child: ListTile(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context)=> creative_cuts(),));
                            },
                            leading: CircleAvatar (
                            child: Image.asset(arrimg[index]), radius: 30,
                           ),
                           title: Row(
                             children: [
                               Text(arrOptions[index],style: GoogleFonts.nunito(fontSize: 18),),
                               SizedBox(width: 5.w,),
                               Container(
                                 height: 25.h, width: 64.h,
                                 decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
                                 alignment: Alignment.center,
                                 child: Row(
                                   children: [
                                     SizedBox(width: 5.w,),
                                  Icon(Icons.star, color:Colors.black,size:15 ),
                                  Text('4.9' , style: GoogleFonts.nunito(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 14,),),
                                   ],
                                 ),
                               ),
                             ],
                           ),
                             subtitle: Text(arrsub[index]),

                             trailing: Icon(Icons.arrow_forward_ios_sharp,color:Colors.white38,size: 15),
                             ),
                            ),

                          ),
                    ),

                    itemCount: arrOptions.length,

                  )



                ]
            ),
          ),
        ),
      ),
    );
  }
}
