import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:khadmaty_app/presentation/login_screens/drawer_screens/contact_us.dart';
import 'package:khadmaty_app/presentation/login_screens/drawer_screens/my_account.dart';
import 'package:khadmaty_app/presentation/login_screens/drawer_screens/privacy_policy.dart';
import 'package:khadmaty_app/presentation/login_screens/drawer_screens/rules_and_conditions.dart';
import 'package:khadmaty_app/presentation/login_screens/drawer_screens/who_are_we.dart';
import 'package:khadmaty_app/presentation/login_screens/first_screen.dart';
import '../main.dart';



log_container( String txt , String path  , TextInputType type, double x , double y ){
  return Container(
    width: 318,
    height: 45,
    padding: const EdgeInsets.only(right: 10 ,top: 5),
    decoration: BoxDecoration(
      color: HexColor("037FC6"),
      borderRadius: BorderRadius.circular(10),
    ),
    child: TextField(
      keyboardType: type,
      decoration: InputDecoration(
        hintText: txt,
        prefixIcon: Image.asset(path , color: Colors.white ,width: x, height: y,),
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

commen_button( String txt , BuildContext context){

  return InkWell(
    child: Container(
      width: 119 ,
      height: 41,
      decoration: BoxDecoration(
        color: HexColor("#9FA9B7"),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text( txt , style: TextStyle(
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
      Navigator.push(context, MaterialPageRoute(builder: (context)=> ProvidedStylesExample() )); //TestbottomNav()
    },
  );
}

search_button( BuildContext context){
  return Container(
    width: 300,
    height: 45,
   // padding: const EdgeInsets.only( top: 5),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: HexColor('#F6F6F6')),
      color: Colors.white,
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
        focusedBorder: InputBorder.none,
        border: InputBorder.none,
        errorBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        hintText: 'بحث',
        hintStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            fontFamily: ArabicFonts.Tajawal,
            package: 'google_fonts_arabic',
            color: HexColor('#8E8E93')
        ),
        prefixIcon: Image.asset("asset/images/Search@2x.png", width: 10, height: 10,)
      ),
    ),
  );
}


class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

drawer_data( BuildContext context){
  return Drawer(
    child: ListView(
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.white
          ),
        ),
        ListTile(
          title: Text("حسابي" , style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: ArabicFonts.Tajawal,
            package: 'google_fonts_arabic',
          ),),
          onTap: (){
            Navigator.push(context, MaterialPageRoute( builder: (context)=> MyaccountScreen()));
          },
        ),
        ListTile(
          title: Text("اتصل بنا" , style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: ArabicFonts.Tajawal,
            package: 'google_fonts_arabic',
          ),),
          onTap: (){
            Navigator.push(context, MaterialPageRoute( builder: (context)=> ContactusScreen()));
          },
        ),
        ListTile(
          title: Text("من نحن" , style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: ArabicFonts.Tajawal,
            package: 'google_fonts_arabic',
          ),),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> WhoareweScreen()));
          },
        ),
        ListTile(
          title: Text("سياسه الخصوصيه" , style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: ArabicFonts.Tajawal,
            package: 'google_fonts_arabic',
          ),),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> PrivacypolicyScreen()));
          },
        ),
        ListTile(
          title: Text("احكام و شروط" , style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: ArabicFonts.Tajawal,
            package: 'google_fonts_arabic',
          ),),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> ConditionsRulesScreen()));
          },
        ),
        ListTile(
          title: Text("تسجيل خروج" , style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: ArabicFonts.Tajawal,
            package: 'google_fonts_arabic',
          ),),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> FirstlogScreen()));
          },
        ),
      ],
    ),
  );
}

