import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:khadmaty_app/core/designe_utiliti_drawer_pages.dart';

class WhoareweScreen extends StatefulWidget {
  @override
  _WhoareweScreenState createState() => _WhoareweScreenState();
}

class _WhoareweScreenState extends State<WhoareweScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: commen_appbar(context),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only(top: 20, right: 15, left: 15, bottom: 60),
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    normal_text("من نحن"),
                    InkWell(
                      child: Image.asset("asset/images/arrow_back.png", width: 45, height: 45, fit: BoxFit.cover,),
                      onTap: (){
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
                SizedBox( height: 20,),
             Container(
               width: 348,
               height: 244,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),
                 image: DecorationImage(
                   image: AssetImage("asset/images/business-characters-team-work-office-people-corporate-employee-cartoon-teamwork-communication-business-team-illustration_176516-369.png"),
                   fit: BoxFit.cover
                 ),
                 boxShadow: [ BoxShadow(
                   color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                   ),
                 ),
                SizedBox( height: 30,),
             Text("kmalkamskgsorgsmaksksfmb;fbsdgsk,"
                 "sdafsgetjryktuktugdfgegqgqgwryrtutyujt,"
                 "asdafsegrttyjuhkikghnnwegqt4yrtyjyukyikiu"
                 "dfsddhftjhtyjtyuj" ,style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontFamily: ArabicFonts.Tajawal,
                        package: 'google_fonts_arabic',
                      ),
             ),
              ],
            )
        ),
      ),

    );
  }
}
