import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:alright/auth/login.dart';

class Forget_Password extends StatelessWidget {
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromRGBO(47, 47, 55, 100),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Center(
              child:  Column(
                children: [
                 SizedBox(height: 150.h,),
                  Text("Forgot Password?", style: GoogleFonts.nunito(fontSize: 24, fontWeight: FontWeight.bold)),
                  Text("Please Type in your Email Address",
                    style: GoogleFonts.nunito(color: Color.fromRGBO(255, 255, 255, 0.38),  fontSize: 16),),
                  SizedBox(height: 131.h,),
                  Container(
                    padding:EdgeInsets.only(left:30 , right: 30) ,
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: "Email Address",
                          hintStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.38)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                          )
                      ),
                    ),
                  ),

                 SizedBox(height: 131.h,),

                  SizedBox(
                    width: 300,
                    height: 60,
                    child: ElevatedButton(onPressed: (){}, child: Text("Send Verification Code"), style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(186, 94, 239, 1), //background color of button
                      //elevation of button
                      shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    ),
                  ),
                 SizedBox(height: 263.h),
                  Wrap(
                    children: [
                      Text("Remember Password? ", style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.38)),),
                      InkWell(onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                      },child: Text("Login")),
                    ],
                  ),
                  SizedBox(height: 49.h,),
                ],
              ),
            ),


          ),
        ),
      ),
    );
  }
}
