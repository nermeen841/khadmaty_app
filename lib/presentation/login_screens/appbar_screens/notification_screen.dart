import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:khadmaty_app/core/designe_utiliti.dart';
import 'package:khadmaty_app/core/designe_utiliti_drawer_pages.dart';
import 'package:khadmaty_app/presentation/login_screens/appbar_screens/message_screen.dart';


class AppnotifyScreen extends StatefulWidget {
  @override
  _AppnotifyScreenState createState() => _AppnotifyScreenState();
}

class _AppnotifyScreenState extends State<AppnotifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: commen_appbar(context),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        padding: const EdgeInsets.only(top: 30 , left: 30, right: 30, bottom: 60),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Text("تم قبول الدفع" , style: TextStyle(
                  color: HexColor("#037FC6"),
                  fontSize: 18,
                  fontFamily: ArabicFonts.Tajawal,
                  fontWeight: FontWeight.bold,
                  package: 'google_fonts_arabic',
                ),),
                SizedBox( height: 10,),
                Divider(
                  thickness: 1,
                  color: HexColor("#9FA9B7"),
                ),
                SizedBox( height: 10,),
                Text("تم قبول الدفع" , style: TextStyle(
                  color: HexColor("#037FC6"),
                  fontSize: 18,
                  fontFamily: ArabicFonts.Tajawal,
                  fontWeight: FontWeight.bold,
                  package: 'google_fonts_arabic',
                ),),
                SizedBox( height: 10,),
                Divider(
                  thickness: 1,
                  color: HexColor("#9FA9B7"),
                ),
                SizedBox( height: 10,),
                Text("تم الرد علي رسالتك", style: TextStyle(
                  color: HexColor("#037FC6"),
                  fontSize: 18,
                  fontFamily: ArabicFonts.Tajawal,
                  fontWeight: FontWeight.w600,
                  package: 'google_fonts_arabic',
                ),),
                FlatButton(
                  child: Text("اضغط هنا", style: TextStyle(
                    color: HexColor("#037FC6"),
                    fontSize: 18,
                    fontFamily: ArabicFonts.Tajawal,
                    fontWeight: FontWeight.w600,
                    package: 'google_fonts_arabic',
                  ),),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> MessageScreen()));
                  },
                ),
                SizedBox( height: 10,),
                Divider(
                  thickness: 1,
                  color: HexColor("#9FA9B7"),
                ),
              ],
            ),
          ),

        ),
      ),

    );
  }


}

