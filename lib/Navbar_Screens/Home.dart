import 'package:alright/Berad_Coins.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Widgets/Navbar.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
           child: SingleChildScrollView(
             child: Stack(
               children: [
                 Center(
                   child: Column(
                     children: [
                      SizedBox( height: 94.h,),
                       Container(
                         child: CircleAvatar(
                           radius: 50,
                           backgroundImage: AssetImage('assets/img/avatar.png'),
                         ),
                       ),
                      SizedBox(height: 25.h,),
                       Text("Welcome Nouman,", style: GoogleFonts.nunito(fontSize: 24, fontWeight: FontWeight.bold),),
                       Text("Let's Scan Your QR Code to get a Beard Coin",
                         style: GoogleFonts.nunito(color: Color.fromRGBO(255, 255, 255, 0.38), fontSize: 16),),
                      SizedBox(height: 60.h,),
                       Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0), color: Colors.white,),
                         height: 205.h, width: 205.w,
                           child: Image.asset("assets/img/QR.png")),
                       SizedBox(height: 60.h,),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 10.0),
                         child: Text("This is your anonymous ID. Behind it hides something like 'User#13'. You can now have your ID scanned by a participating barber and you will immediately receive your digital stamp.",style: GoogleFonts.nunito(color: Color.fromRGBO(255, 255, 255, 0.38),fontSize: 16,),
                         ),
                       ),
                      SizedBox(height: 20,),
                       Padding(
                         padding:  EdgeInsets.only(left: 18.0, right: 18.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Wrap(
                               children: [
                                 Text('We call it', style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.38), fontSize: 16),),
                                 Text('"Beard coin"', style: TextStyle(fontSize: 16) ,),
                               ],
                             ),
                             SizedBox(
                               height: 50.h, width: 151.w,
                               child: ElevatedButton(onPressed: (){
                                 Navigator.push(context, MaterialPageRoute(
                                   builder: (context)=> Beard_coins(),));
                               }, child: Text('Beard Coins'),
                                 style: ElevatedButton.styleFrom(
                                   backgroundColor: Color.fromRGBO(186, 94, 239, 1), //background color of button
                                   //elevation of button
                                   shape: RoundedRectangleBorder( //to set border radius to button
                                       borderRadius: BorderRadius.circular(15)
                                   ),

                                 ),
                               ),
                             ),
                           ],
                         ),
                       )



                     ],

                   ),
                 ),

               ],
             ),
           ),
      ),
    );

   }
  }
