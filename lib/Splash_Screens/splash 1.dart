import 'package:alright/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
 bool changed = false;
 bool changed1 = false;
  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
                children: [
                SizedBox(height: 150.h),
                Center(
                  child: Text("Tell Us About Yourself",
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 5.h,),
                Center(
                  child: Text("Choose to Continue",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Color.fromRGBO(255, 255, 255, 0.38),
                    ),
                  ),
                ),
                SizedBox(height: 131.h,),

                // Center(
                //   child: SizedBox( height: 100.h,width: 348,
                //     child: ElevatedButton(
                //       style: ElevatedButton.styleFrom(
                //         backgroundColor: Color.fromRGBO(186, 94, 239,1),
                //           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                //       ),
                //       onPressed: (){},
                //       child: Row(
                //         children: [
                //           Icon(Icons.person),
                //           SizedBox(width: 20.w,),
                //           Text("Beard Friend")
                //         ],),),
                //   ),
                // ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        changed = true;
                        changed1 = false;
                      });
                    },
                    child: AnimatedContainer(
                        duration: Duration(seconds: 0),
                      alignment: Alignment.center,
                      height: 100.h, width: 348.w,
                      decoration: BoxDecoration(
                          color: changed? Color.fromRGBO(186, 94, 239, 1) : Colors.black38,
                          borderRadius: BorderRadius.circular(20),

                    ),
                      child: Row(
                        children: [
                        SizedBox(width: 38.w,), Icon(Icons.person), SizedBox(width: 30.h,),
                          Text("Beard Friend", style: TextStyle(fontSize: 16,color: Colors.white),),
                        ],
                      ),
                    ),
                  ),

                SizedBox(height: 45.h,),

                  InkWell( onTap: (){

                    setState(() {
                      changed1 = true;
                      changed = false;
                    });
                  },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 0),
                      alignment: Alignment.center,
                      height: 100.h, width: 348.w,
                      decoration: BoxDecoration(
                        color: changed1? Color.fromRGBO(186, 94, 239, 1) : Colors.black38,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 38.w,), Icon(Icons.storefront), SizedBox(width: 30.h,),
                          Text("Barbarshop",style: TextStyle(fontSize: 16,color: Colors.white),),
                        ],
                      ),
                    ),
                  ),

                SizedBox(height: 200.h,),
                Padding(
                  padding:  EdgeInsets.only(left: 205.w,),
                  child: SizedBox( height: 60.h,width: 143.w,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(186, 94, 239, 1),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ), onPressed: () async {
                      if( changed == true ){
                       await Navigator.push(context, MaterialPageRoute(
                          builder: (context)=> Login(),
                        ));
                        setState(() {
                          changed = false;
                        });
                      }
                      if( changed1 == true ){
                      await Navigator.push(context, MaterialPageRoute(
                          builder: (context)=> Login(),
                        ));
                         setState(() {
                           changed1 = false;
                         });
                      }
                      else { Fluttertoast.showToast(
                          msg: "Select any option first",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.TOP,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.black26,
                          textColor: Colors.white,
                          fontSize: 18.0,
                      );}
                    },
                      child: Row(
                          children: [
                          Text("Next",style: TextStyle(fontSize: 16.sp),),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_sharp,size: 16.sp,),

                        ],),),
                  ),
                ),
               SizedBox(height: 90.h,)
              ],
            ),
          ),
        ),
      ),
        );
  }
}
