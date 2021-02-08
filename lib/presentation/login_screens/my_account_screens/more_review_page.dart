import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:khadmaty_app/core/designe_utiliti.dart';
import 'package:khadmaty_app/core/designe_utiliti_drawer_pages.dart';

class MoreReviewPage extends StatefulWidget {
  @override
  _MoreReviewPageState createState() => _MoreReviewPageState();
}

class _MoreReviewPageState extends State<MoreReviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: commen_appbar(context),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            InkWell(
              child: Image.asset("asset/images/arrow_back.png",  fit: BoxFit.cover, width: 40, height: 40,),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                padding: const EdgeInsets.only( top: 10, ),
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: ( BuildContext context, int index){
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
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

                              SizedBox( width: 7),

                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text("محمد علام", style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: ArabicFonts.Tajawal,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  package: 'google_fonts_arabic',
                                ),),
                              ),
                              SizedBox( width: 40),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text("2 / 12 / 2020", style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: ArabicFonts.Tajawal,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  package: 'google_fonts_arabic',
                                ),),
                              ),


                            ],
                          ),
                          SizedBox( height: 10,),
                          Text("sfgdhwthsfndmyhgutgmfhfh"
                              "vxxffghyjdgbxfgse"
                              "vxxfdfhtf"
                              "cfhfghfjfjfsgse", style: TextStyle(
                            color: Colors.black,
                            fontFamily: ArabicFonts.Tajawal,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            package: 'google_fonts_arabic',
                          ),),
                          SizedBox( height: 10,),
                          Divider( thickness: 1, color: HexColor("#9FA9B7") )
                        ],
                      );
                    }),
              ),
            )
          ],
        )
      ),
    );
  }
}
