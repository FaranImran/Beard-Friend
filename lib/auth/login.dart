import 'package:alright/Widgets/Navbar.dart';
import 'package:alright/auth/Forget_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:alright/auth/Signup.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Navbar_Screens/Home.dart';

class Login extends StatelessWidget {
  launchURL(String url) async {
    if (await canLaunchUrl(url as Uri)) {
      await launchUrl(url as Uri);
    } else {
      throw 'Could not launch $url';
    }
  }
  final _formkey = GlobalKey<FormState>();

  Validate(BuildContext context) async {

      if (_formkey.currentState!.validate()) {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => const navbar()));
      }

  }

  @override
  bool login = false;

   Widget build(BuildContext context) {

    return Scaffold(
        body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child:  Form(
              key: _formkey,
              child: Column(
                children: [
                  SizedBox(height: 91.h),
                  Image.asset('assets/img/small logo.png'),
                  SizedBox(height: 25.h),
                  Text("Welcome Back", style: GoogleFonts.nunito(fontSize: 24, fontWeight: FontWeight.bold),),
                  Text("Please Login to your Account",
                    style: GoogleFonts.nunito(color: Color.fromRGBO(255, 255, 255, 0.38), fontSize: 16),),
                  SizedBox(height: 90.h),
                  Container(
                    padding:EdgeInsets.only(left:30 , right: 30) ,
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        hintText: "Email Address",
                          hintStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.38)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                      ),  validator: (value) {
                      if(value == null || value.isEmpty){
                          return "Please Enter your Email Address.";
                        }
                        return null;
                      },
                    ),
                  ),

                  SizedBox(height: 25.h),
                  Container(
                    padding:EdgeInsets.only(left:30 , right: 30) ,
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        hintText: "Password",
                          hintStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.38)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                          )
                      ),
                     validator: (value) {
                       if(value == null || value.isEmpty){
                         return "Enter your Password.";
                       }
                       else if(value.length < 8){
                         return "Password length should be 8.";
                       }
                       return null;
                     },
                    ),
                  ),

                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=> Forget_Password()
                    ));
                  }, child: Text("Forgot Password?",
                 style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.38),  fontSize: 14),)),
                  SizedBox(height: 75.h),

                  SizedBox(
                    width: 300,
                    height: 60,
                    child: ElevatedButton(onPressed: () => Validate(context),

                      child: Text("Login"), style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(186, 94, 239, 1), //background color of button
                      //elevation of button
                      shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    ),
                  ),
                  SizedBox(height: 45.h),
                  Text("or Continue With", style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.38)),),
                  SizedBox(height: 25.h,),
                  Row(
                      children:[
                        SizedBox(width: 159.w,),
                        InkWell(
                        child: Image.asset('assets/img/FB.png'),
                       onTap: (){
                         const url = 'https://www.facebook.com/';
                       },
                       ),
                       SizedBox(width: 20.w,),
                       InkWell(
                       child: Image.asset('assets/img/Google.png'),
                       onTap: (){
                         const url = 'https://www.google.com/';
                       },
                       ),
                     ],
                   ),
                  SizedBox(height: 63.h,width:96.w ),
                  Wrap(
                    children: [
                      Text("Not have an Account? ", style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.38)),),
                      InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context)=> signup()
                            ));
                          },
                          child: Text("Create One"))
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
