import 'package:alright/auth/login.dart';
import 'package:alright/how to participate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class contest extends StatefulWidget {
  const contest({Key? key}) : super(key: key);

  @override
  State<contest> createState() => _contestState();
}

class _contestState extends State<contest> {
  @override
  List<String> arrimg = ['assets/img/grid 1.png', 'assets/img/grid 2.png', 'assets/img/grid 3.png', 'assets/img/grid 4.png'];
  List<String> arrtxt = ['1455', '1255', '1155', '1004'];

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 80.h,),
                  Text("Beard Contest", style: GoogleFonts.nunito(fontSize: 24, fontWeight: FontWeight.bold),),
                  Text("Participate in the Contest",
                    style: GoogleFonts.nunito(color: Color.fromRGBO(255, 255, 255, 0.38), fontSize: 16),),

                  SizedBox(height: 30.h),

                  Container(
                    height: 162.h, width: 378.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(255, 255, 255, 0.38),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(height: 15.h,),
                          Text("Contest Ends in", style: TextStyle(fontSize: 16) ,),
                          SizedBox(height: 25.h,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                              Padding(padding: EdgeInsets.only(left: 55)),
                              SizedBox( height: 60.h,width: 57.5.w,
                                child: CircularProgressIndicator(
                            color: Color.fromRGBO(186,94, 239, 1),
                          ),
                              ),
                          SizedBox(width: 40.w,),
                              SizedBox( height: 60.h,width: 57.5.w,
                                child: CircularProgressIndicator(
                            color: Color.fromRGBO(186,94, 239, 1),
                          ),
                              ),
                          SizedBox(width: 40.w,),
                              SizedBox( height: 60.h,width: 57.5.w,
                                child: CircularProgressIndicator(
                            color: Color.fromRGBO(186,94, 239, 1),
                          ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                  ),
                  SizedBox(height: 30.h,),
                  SizedBox( height: 60.h , width: 378.w,
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Participate(),));
                    }, child: Text("Participate in the Contest"),
                      style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(186, 94, 239, 1), 
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                    ),
                  ),

                  SizedBox(height: 30.h),

                  Row(
                    children: [
                   Text("Leader Board", style: GoogleFonts.nunito(color: Color.fromRGBO(255, 255, 255, 0.38), fontSize: 18),),
                      SizedBox(width: 10.w,),
                      Image.asset("assets/img/contest.png"),

                      Spacer(),

                      SizedBox( height: 33.h , width: 93.w,
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Participate(),));
                        }, child: Text("View All", style: TextStyle(fontSize: 12),),
                        style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(186, 94, 239, 1),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                        ),
                      ),
                    ],
                  ),
                 SizedBox(height: 25.h,),
                 GridView.builder( shrinkWrap: true, physics: NeverScrollableScrollPhysics(), itemCount: arrtxt.length,
                   gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),
                   itemBuilder:(context, index) {
                   return Stack(
                     children: [
                       Card(
                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                         child: Container(
                           // decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),),
                           //margin: EdgeInsets.all(25),
                         child: Image.asset(arrimg[index], fit: BoxFit.fitWidth,),
                     ),
                       ),
                       Positioned( bottom:8.0,
                         child: Text(arrtxt[index], style: TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.bold,),
                         ),
                       ),
                     ]
                   );
                 },)
                ]
            ),
          ),
        ),
      ),
    );
  }
}
