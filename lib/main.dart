import 'package:alright/Widgets/Navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Splash_Screens/splash.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Beard Friend',
          theme: ThemeData(

            fontFamily: GoogleFonts.nunito(fontSize: 14).fontFamily,
           brightness: Brightness.dark,
            //textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: SplashScreen(),
        );
      },

    );

  }
}
// class navigation extends StatefulWidget {
//   const navigation({Key? key}) : super(key: key);
//
//   @override
//   State<navigation> createState() => _navigationState();
// }
//
// class _navigationState extends State<navigation> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: navbar(),
//     );
//   }
// }
