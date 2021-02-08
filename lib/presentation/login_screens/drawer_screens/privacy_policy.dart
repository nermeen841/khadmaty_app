import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:khadmaty_app/core/designe_utiliti_drawer_pages.dart';

class PrivacypolicyScreen extends StatefulWidget {
  @override
  _PrivacypolicyScreenState createState() => _PrivacypolicyScreenState();
}

class _PrivacypolicyScreenState extends State<PrivacypolicyScreen> {
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
                    normal_text("سياسه الخصوصيه"),
                    InkWell(
                      child: Image.asset("asset/images/arrow_back.png" , width: 45, height: 45, fit: BoxFit.cover,),
                      onTap: (){
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
                SizedBox( height: 20,),
               Text("kmalkamskgsorgsmaksksfmb;fbsdgsk"
                   "MGHMGMGTGUKUKTUKTUUJKTY"
                   "CSVSDSFTTFHFYHHHRT" ,style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontFamily: ArabicFonts.Tajawal,
                        package: 'google_fonts_arabic',
                      ),)
              ],
            )
        ),
      ),

    );
  }
}
