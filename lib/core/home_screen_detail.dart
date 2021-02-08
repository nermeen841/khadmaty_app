import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:khadmaty_app/presentation/login_screens/buttom_nav_screens/course_screen.dart';
import 'designe_utiliti.dart';




card_container1(String path , String txt , BuildContext context){
  return InkWell(
    child: Container(
              padding: const EdgeInsets.only( top: 10, bottom: 10),
              margin: const EdgeInsets.only( top: 5, bottom: 5),
              width: 180,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: HexColor("#037FC6")),
                color: Colors.transparent,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(path),
                  Text(txt, style: TextStyle(
                    color: HexColor("#037FC6"), fontFamily: ArabicFonts.Tajawal,
                    fontSize: 18, fontWeight: FontWeight.bold, package: 'google_fonts_arabic',),),

                ],
              ),
            ),
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> CoursedetailScreen()));
    },

          );
        }

card_container2( String path, String txt, BuildContext context){
  return InkWell(
    child: Container(
              padding: const EdgeInsets.only( top: 5, bottom: 5),
              margin: const EdgeInsets.only( top: 5, bottom: 5),
              width: 135,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: HexColor("#037FC6")),
                color: Colors.transparent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(path),
                  Text(txt , style: TextStyle(
                    color: HexColor("#037FC6"), fontFamily: ArabicFonts.Tajawal,
                    fontSize: 18, fontWeight: FontWeight.bold, package: 'google_fonts_arabic',),),


                ],
              ),
            ),
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> CoursedetailScreen()));
    },
          );
        }
