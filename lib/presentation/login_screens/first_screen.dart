import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:khadmaty_app/core/designe_utiliti.dart';
import 'package:khadmaty_app/presentation/login_screens/log_in_screen.dart';
import 'package:khadmaty_app/presentation/login_screens/sign_up_screen.dart';
import 'forget_password_screen.dart';


class FirstlogScreen extends StatefulWidget {
  @override
  _FirstlogScreenState createState() => _FirstlogScreenState();
}

class _FirstlogScreenState extends State<FirstlogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.only( top: 300 , ),
          color: Colors.white,
        child: Center(
          child: Column(
            children: [
              InkWell(
                child: Container(
                  width: 230 ,
                  height: 41,
                  decoration: BoxDecoration(
                    color: HexColor("#037FC6"),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text( "دخول" , style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      fontFamily: ArabicFonts.Tajawal,
                      package: 'google_fonts_arabic',
                    ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=> LoginScreen()));
                },
              ),
              SizedBox( height: 20,),
              InkWell(
                child: Container(
                  width: 230 ,
                  height: 41,
                  decoration: BoxDecoration(
                    color: HexColor("#037FC6"),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text( "تسجيل" , style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      fontFamily: ArabicFonts.Tajawal,
                      package: 'google_fonts_arabic',
                    ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupScreen()));
                },
              ),
              SizedBox( height: 15,),
              InkWell(
                child: Text("هل نسيت كلمه السر ؟" , style: TextStyle(
                  color: HexColor("#037FC6"),
                  fontSize: 18,
                  fontFamily: ArabicFonts.Tajawal,
                  fontWeight: FontWeight.w400,
                  package: 'google_fonts_arabic',
                ),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgetpasswordScreen()));
                },
              )

            ],
          ),
        ),
      
      ),
    );
  }
}
