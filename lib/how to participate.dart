import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Participate extends StatefulWidget {
  const Participate({Key? key}) : super(key: key);

  @override
  State<Participate> createState() => _ParticipateState();
}

class _ParticipateState extends State<Participate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
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
                          children: [
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
                Text("Description", style: GoogleFonts.nunito(fontSize: 18),),
                SizedBox(height: 15.h,),
                Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.",
                  style: GoogleFonts.nunito(color: Color.fromRGBO(255, 255, 255, 0.38), fontSize: 16),),

                SizedBox(height: 20.h,),
                Text("Advantages", style: GoogleFonts.nunito(fontSize: 18),),
                SizedBox(height: 15.h,),
                Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.  Aenean commodo ligula eg  Aenean comm ligula eg.",
                  style: GoogleFonts.nunito(color: Color.fromRGBO(255, 255, 255, 0.38), fontSize: 16),),

                SizedBox(height: 20.h,),
                Text("How to Join?", style: GoogleFonts.nunito(fontSize: 18),),
                SizedBox(height: 15.h,),
                Text("The Steps are Given Below:\n \u2022 Here ipsum dolor sit amet, consectetuer.\n \u2022 Hpsum dolor sit amet, consectetuer hasellus viverra nulla ut metus varius laoreet.\n \u2022 Cras dapibus. Vivamus elementum semper nisi.",
                  style: GoogleFonts.nunito(color: Color.fromRGBO(255, 255, 255, 0.38), fontSize: 16),),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
