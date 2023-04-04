import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:alright/auth/login.dart';
class signup extends StatefulWidget {
  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  bool _box1value = false;
  bool _box2value = false;
  bool  box1 = false;
  bool  box2 = false;

  void _ShowDialog(){
    showDialog(context: context,
        builder: (context) =>  AlertDialog(

              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              title: Text("GDPR and General Terms & Conditions",style: TextStyle(fontSize: 18),),
              actions: [
                SizedBox(height:50.h, width: 151.w,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        if(_box1value == true && _box2value == true){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context)=> Login()));
                       setState(() {
                         _box1value = false; _box2value = false;
                       });
                        }
                        else {
                          Fluttertoast.showToast(
                            msg: "Read Terms & Conditions",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.black26,
                            textColor: Colors.white,
                            fontSize: 18.0,
                          );
                        }
                      });
                    }, child: Text("Continue"),style:ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(186, 94, 239, 1), shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(15)
                    ),),
                    )),
              ],
              content:
              Column(
                children: [
                  Row(
                    children: [
                      StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState){
                          return Checkbox( value: _box1value, activeColor: Color.fromRGBO(186,94, 239, 1), onChanged:(bool? box1){
                            setState(() {
                              _box1value = box1!;
                            });
                          },);
                        },
                      ),Text("I Agree & Accept Privacy\nPolicy"),
                    ],
                  ),

                  SizedBox(height: 25.h,),
                  Row(
                    children: [
                      StatefulBuilder( builder: (BuildContext context, StateSetter setState){
                        return Checkbox(value: _box2value, activeColor: Color.fromRGBO(186,94, 239, 1), onChanged:(bool? box2){
                          setState(() {
                           _box2value = box2!;
                          });
                        }, );
                      }
                      ),   Text("I Agree & Accept General\nTerms & Conditions",style: TextStyle(fontSize: 16),),
                    ],
                  ),

                   SizedBox(height: 40.h,),
                  Text("Make Sure you have read our Terms &\nCondition before Continue to the app.", style: TextStyle(fontSize: 16),),

                ],
              ),
            ),);
  }

  final _formkey = GlobalKey<FormState>();

  Validate(BuildContext context) async {

    if (_formkey.currentState!.validate()) {
      _ShowDialog();
    }
  }

   @override

  Widget build(BuildContext context) {

    return Scaffold(
     // backgroundColor: Color.fromRGBO(47, 47, 55, 100),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
             child: Center(
              child:  Form(
                key: _formkey,
                child: Column(
                  children: [
                    SizedBox(height: 91.h),
                    Image.asset('assets/img/small logo.png'),
                    SizedBox(height: 25.h),
                    Text("Create Account", style: GoogleFonts.nunito(fontSize: 24, fontWeight: FontWeight.bold),),
                    Text("Please Signup to your Account",
                      style: GoogleFonts.nunito(color: Color.fromRGBO(255, 255, 255, 0.38), fontSize: 16),),
                 SizedBox(height: 90,),

                    Container(
                      padding:EdgeInsets.only(left:30 , right: 30) ,
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            hintText: "Username",
                            hintStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.38)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)
                            )
                        ),
                         validator: (value) {
                           if(value == null || value.isEmpty){
                             return "Enter your Name.";
                           }
                           return null;
                         },
                      ),
                    ),


                    SizedBox(height: 25.h),

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
                     validator: (value) {
                       if(value == null || value.isEmpty){
                         return "Enter your Email Address.";
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

            SizedBox(height: 25.h),

            Container(
                padding:EdgeInsets.only(left:30 , right: 30) ,
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    hintText: "Confirm Password",
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

                    SizedBox(height: 75.h),

                   SizedBox(
                     width: 300,
                     height: 60,
                     child: ElevatedButton(onPressed:() => Validate(context),
                       child: Text("Create Account"), style: ElevatedButton.styleFrom(
                       backgroundColor: Color.fromRGBO(186, 94, 239, 1), //background color of button
                       //elevation of button
                       shape: RoundedRectangleBorder( //to set border radius to button
                           borderRadius: BorderRadius.circular(18)
                       ),
                     ),
                     ),
                   ),
                    SizedBox(height: 64,),
                    Wrap(
                     children: [
                               Text("Already have an Account? ", style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.38)),),
                               InkWell(onTap: (){
                                 Navigator.push(context, MaterialPageRoute(
                                     builder: (context)=> Login()));
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
                  ),
         );
  }
}
