import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:khadmaty_app/presentation/login_screens/appbar_screens/notification_screen.dart';
import 'package:khadmaty_app/presentation/login_screens/my_account_screens/detail_screen.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'designe_utiliti.dart';








commen_appbar( BuildContext context){
  return AppBar(
    backgroundColor: HexColor("#037FC6"),
    elevation: 0.0,
    automaticallyImplyLeading: false,
    actions: [
      InkWell(
        child: Image.asset("asset/images/notification.png"),
        onTap: (){

       Navigator.push(context, MaterialPageRoute(builder: (context)=> AppnotifyScreen()));
        },
      )
    ],
  );
}

nam_container( TextInputType type){
  return Container(
    width: 331,
    height: 34,
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [ BoxShadow(
        color: Colors.grey.withOpacity(0.2),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
      ],
    ),
    child: TextField(
      keyboardType: type,
      decoration: InputDecoration(
        hintText: "",
        hintStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w400,
          fontFamily: ArabicFonts.Tajawal,
          package: 'google_fonts_arabic',
        ),
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
      ),
    ),
  );
}

message_container(){
  return Container(
    width: 331,
    height: 295,
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [ BoxShadow(
        color: Colors.grey.withOpacity(0.2),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
      ],
    ),
    child: TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: "",
        hintStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontFamily: ArabicFonts.Tajawal,
          package: 'google_fonts_arabic',
        ),
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
      ),
    ),
  );
}

send_button(){
  return InkWell(
    child: Container(
        width: 77,
        height: 28,
        decoration: BoxDecoration(
          color: HexColor("#FE0E0E"),
          borderRadius: BorderRadius.circular(5),
          boxShadow: [ BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
          ],

        ),
        child: Center(
          child: Text("ارسال" , style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
            fontFamily: ArabicFonts.Tajawal,
            package: 'google_fonts_arabic',
          ),),
        )
    ),
    onTap: (){},
  );
}

header_text( String txt){
  return Text(
    txt,
    style: TextStyle(
      color: Colors.black,
      fontFamily: ArabicFonts.Tajawal,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      package: 'google_fonts_arabic',
    ),
  );
}

normal_text( String txt){
  return Text(
    txt,
    style: TextStyle(
      color: Colors.black,
      fontFamily: ArabicFonts.Tajawal,
      fontSize: 18,
      fontWeight: FontWeight.w400,
      package: 'google_fonts_arabic',
    ),
  );
}

my_account_container( BuildContext context){
  return Container(
    width: 358,
    height: 320,
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.white,
      boxShadow: [ BoxShadow(
        color: Colors.grey.withOpacity(0.2),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 358,
          height: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage("asset/images/top-view-businessmen-analyzing-bar-charts-laptop.png"),
                fit: BoxFit.cover),
          ),
        ),
        SizedBox( height: 10,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SmoothStarRating(
              rating: 3,
              color: HexColor("#EA8600"),
              borderColor: HexColor("#EA8600"),
              isReadOnly: true,
              size: 20,
              filledIconData: Icons.star,
              halfFilledIconData: Icons.star_half,
              defaultIconData: Icons.star_border,
              starCount: 4,
              allowHalfRating: true,
              spacing: 2.0,
              onRated: (value) {
                print("rating value -> $value");
                // print("rating value dd -> ${value.truncate()}");
              },
            ),
           // SizedBox( width: 10,),
            InkWell(
              child: Image.asset("asset/images/like(-4.png" , fit: BoxFit.cover,),
              onTap: (){},
            ),
           // SizedBox( width: 10,),
            Text("9 ايجابي" , style: TextStyle(
              color: HexColor("#037FC6"),
              fontFamily: ArabicFonts.Tajawal,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              package: 'google_fonts_arabic',
            ),),
            //SizedBox( width: 20,),
            InkWell(
              child: Image.asset("asset/images/like(-3.png" , fit: BoxFit.cover,),
              onTap: (){},
            ),
           // SizedBox( width: 10,),
            Text("0 سلبي" , style: TextStyle(
              color: HexColor("#037FC6"),
              fontFamily: ArabicFonts.Tajawal,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              package: 'google_fonts_arabic',
            ),),
          ],
        ),
        SizedBox( height: 15,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text("السعر : 50 ", style: TextStyle(
                color: HexColor("#037FC6"),
                fontFamily: ArabicFonts.Tajawal,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                package: 'google_fonts_arabic',
              ),),
            ),
            InkWell(
              child: Container(
                  width: 98,
                  height: 32,
                  decoration: BoxDecoration(
                    color: HexColor("#037FC6"),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [ BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                    ],

                  ),
                  child: Center(
                    child: Text("اعاده طلب" , style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: ArabicFonts.Tajawal,
                      package: 'google_fonts_arabic',
                    ),),
                  )
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute( builder: (context)=> DetailScreen()));
              },
            )

          ],
        ),
      ],
    ),
  );
}


