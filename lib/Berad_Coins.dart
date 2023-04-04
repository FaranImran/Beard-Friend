import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Creative_cuts.dart';

class Beard_coins extends StatefulWidget {
  const Beard_coins({Key? key}) : super(key: key);

  @override
  State<Beard_coins> createState() => _Beard_coinsState();
}

class _Beard_coinsState extends State<Beard_coins> {
   @override
  Widget build(BuildContext context) {
     List<String> arrOptions = ['Creative Cuts', 'Sunset Barbar', 'Style Cave', 'The Urban Shave', 'Medal Barbar'];
     List<String> arrimg = ['assets/img/shop1.png', 'assets/img/shop2.png', 'assets/img/shop3.png', 'assets/img/shop4.png', 'assets/img/shop5.png'];

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(17.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 80,),
                  Text("Beard Coins", style: GoogleFonts.nunito(fontSize: 24, fontWeight: FontWeight.bold),),
                  Text("Your Collections",
                    style: GoogleFonts.nunito(color: Color.fromRGBO(255, 255, 255, 0.38), fontSize: 16),),
                SizedBox(
                  height: 40,
                ),
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
               title: Text(arrOptions[index],style: GoogleFonts.nunito(fontSize: 18),),
                      subtitle: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 25.h, width: 64.h,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
                            child:
                      Text('03/10' , style: GoogleFonts.nunito(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 14,),),
                          ),
                          SizedBox(width: 10.h,),
                          Text('Coins Collected'),
                        ],
                      ),
                       trailing: Icon(Icons.arrow_forward_ios_sharp,color:Colors.white38,size: 15),

            ),
                        ),

                  ),
                ),

              itemCount: arrOptions.length,

            )
            ],
            ),
          ),
        ),
      ),
    );
  }
}
