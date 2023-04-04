import 'package:alright/Berad_Coins.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class creative_cuts extends StatefulWidget {
  const creative_cuts({Key? key}) : super(key: key);

  @override
  State<creative_cuts> createState() => _creative_cutsState();
}

class _creative_cutsState extends State<creative_cuts> {
  Widget myRow({required String title, required name }){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        Text(name),
      ],
    );
  }
  Widget myRow1({required String title, required name }){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        SizedBox(width: 30.w,),
        Text(name),
      ],
    );
  }
  Widget title({required String title}){
    return  Row(
      children: [
        Text(title,style: GoogleFonts.nunito(fontSize: 18, color: Colors.white54),),
        ],
    );
  }

  @override
bool icon = false;

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/img/creative cuts.png',),

                Positioned(top:60.h, left: 20.w, child:
                InkWell(child: Image.asset("assets/img/arrow head.png"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=> Beard_coins(),));
                },)),

                Positioned(top:60.h, right: 20.w,
                child: Container( height: 40.h, width: 40.w,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color:Color.fromRGBO(186, 94, 239, 1) ),
                child: Center(
                  child: IconButton(icon: Icon(Icons.favorite, size: 17), color: icon? Colors.red : Colors.white,
                    onPressed: (){
                       setState(() {
                         icon = true;
                       });
                  },),
                ),
                ),
                ),
                ] ),
                Container(
                  padding: EdgeInsets.all(19),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                        Text("Creative Cuts", style: GoogleFonts.nunito(fontSize: 24, fontWeight: FontWeight.bold),),
                        Text("Koln-Germany",
                          style: GoogleFonts.nunito(color: Color.fromRGBO(255, 255, 255, 0.38), fontSize: 16),),
                        SizedBox( height: 40,),

                        Row(
                          children: [
                            title(title: "Your Collection"),
                            SizedBox(width: 194.w,),
                            Container(
                            height: 25.h,width: 64.w,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5.r)),
                            child: Center(child: Text("03 / 10",
                              style:GoogleFonts.nunito(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 14,),)),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.h,),
                        SizedBox( height: 155.h, width: 390.w,
                          child: GridView.builder( shrinkWrap: true, physics: NeverScrollableScrollPhysics(),
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 5, crossAxisSpacing: 9, childAspectRatio: 1),
                            itemBuilder: (context, index) {
                              return Card();
                            },),
                        ),
                        SizedBox(height: 30.h,),
                        title(title: "Barbar Details"),
                        SizedBox(height: 20.h,),
                        myRow1(title: "Address", name: "Koln-Germany"),
                        SizedBox(height: 15.h,),
                        myRow1(title: "Web", name:"www.creativecut-cologne.de"),
                        SizedBox(height: 15.h,),
                        myRow1(title: "Tel", name:"+49 221 934590"),
                        SizedBox(height: 15.h,),
                        myRow1(title: "Mail", name: "contact@creativecut.cologne.de"),
                        SizedBox(height: 30.h,),

                        title(title: "Shop Details"),
                        SizedBox(height: 20.h,),
                        myRow1(title: "Sits", name: "12"),
                        SizedBox(height: 15.h,),
                        myRow1(title: "Languages", name: "English,Austrian & Egyptian"),
                        SizedBox(height: 15.h,),
                        myRow1(title: "Staff", name: "6 Members"),
                        SizedBox(height: 30.h,),

                     title(title: "Price List"),
                     SizedBox(height: 20.h,),
                     myRow(title: "Hair Cut", name: "14 \$"),
                     SizedBox(height: 15.h,),
                     myRow(title: "Hair Cut & Style", name: "14 \$"),
                     SizedBox(height: 15.h,),
                     myRow(title: "Hair Cut & Beard", name: "14 \$"),
                     SizedBox(height: 15.h,),
                     myRow(title: "Beard Only", name: "14 \$"),
                     SizedBox(height: 30.h,),

                        title(title: "Opening Timing"),
                        SizedBox(height: 20.h,),
                        myRow(title: "Monday", name: "9:00 to 17:00"),
                        SizedBox(height: 15.h,),
                        myRow(title: "Tuesday", name: "9:00 to 17:00"),
                        SizedBox(height: 15.h,),
                        myRow(title: "Wednesday", name: "9:00 to 17:00"),
                        SizedBox(height: 15.h,),
                        myRow(title: "Thursday", name: "9:00 to 17:00"),
                        SizedBox(height: 15.h,),
                        myRow(title: "Friday", name: "9:00 to 16:00"),
                        SizedBox(height: 15.h,),
                        myRow(title: "Saturday", name: "9:00 to 14:00"),
                        SizedBox(height: 15.h,),
                        myRow(title: "Sunday", name: "Closed"),
                        SizedBox(height: 41.h,),
                  ],
            ),
                ),
          ],
        ),
      ),
    );
  }
}
