import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:khadmaty_app/core/designe_utiliti.dart';
import 'package:khadmaty_app/core/designe_utiliti_drawer_pages.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: commen_appbar(context),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(15),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _maine_header(),
              SizedBox( height: 40,),
              _seeting_container("الاسم :", "asset/images/Path 108.png", TextInputType.name , 20, 20),
              SizedBox( height: 20,),
              _seeting_container("رقم الجوال :", "asset/images/Path 109.png", TextInputType.number, 20 , 20),
              SizedBox( height: 20,),
              _seeting_container("ايميلك الشخصي :", "asset/images/Path 1.png", TextInputType.emailAddress , 13, 15),
              SizedBox( height: 20,),
              _seeting_container("العنوان :", "asset/images/home.png", TextInputType.text, 20 ,20)


            ],
          ),

        ),
      ),

    );
  }


  _seeting_container( String txt , String path , TextInputType type , double x, double y){
    return Container(
      width: 320,
      height: 40,
      decoration: BoxDecoration(
        color: HexColor("#037FC6"),
        borderRadius: BorderRadius.circular(10),
      ),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 160,
            height: 40,
            padding: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(path, fit: BoxFit.cover, width: x, height: y,),
                SizedBox( width: 5,),
                Text(txt , style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: ArabicFonts.Tajawal,
                  package: 'google_fonts_arabic',
                ),)
              ],
            ),
          ),
          Container(
            width: 160,
            height: 40,
            padding: const EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                hintText: "",
                hintStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontFamily: ArabicFonts.Tajawal,
                    package: 'google_fonts_arabic',
                    color: HexColor('#8E8E93')
                ),
            ),
          ),
          )
        ],
      ),
    );
  }

  _maine_header(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),

              ),
              child: CircleAvatar(
               // backgroundImage: NetworkImage("$imgUrl" ),
                backgroundColor: Colors.amber,
              ),
            ),
            InkWell(
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                ),
                child: Center(
                  child: Image.asset("asset/images/Group 364.png", fit: BoxFit.cover, width: 35, height: 35,),
                ),
              ),
              onTap: (){},
            ),
          ],
        ),
        InkWell(
          child: Image.asset("asset/images/arrow_back.png", width: 45, height: 45, fit: BoxFit.cover,),
          onTap: (){},
        )
      ],
    );
  }
}
