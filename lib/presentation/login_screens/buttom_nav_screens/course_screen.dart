import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:khadmaty_app/core/designe_utiliti_drawer_pages.dart';
import 'package:khadmaty_app/presentation/login_screens/my_account_screens/detail_screen.dart';

class CoursedetailScreen extends StatefulWidget {
  @override
  _CoursedetailScreenState createState() => _CoursedetailScreenState();
}

class _CoursedetailScreenState extends State<CoursedetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: commen_appbar(context),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only(left: 10, right: 10 , bottom: 20, top: 15),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                header_text("انجز اعمالك بسهوله و امان"),
                InkWell(
                  child: Image.asset("asset/images/arrow_back.png", width: 45, height: 45, fit: BoxFit.cover,),
                  onTap: (){
                    Navigator.pop(context);
                  },
                )

              ],
            ),
            SizedBox( height: 15,),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 450,
                padding: const EdgeInsets.only( bottom: 20),
                child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: ( BuildContext context , int index){
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            child: Container(
                              width: 168,
                              height: 123,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: AssetImage("asset/images/thoughtful-blonde-woman-glasses-holding-pencil-looking-away-during-work-office-indoor-portrait-busy-long-haired-female-accountant-using-computer.png"),
                                      fit: BoxFit.cover
                                  )
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    width: 168,
                                    height: 86,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                            image: AssetImage("asset/images/thoughtful-blonde-woman-glasses-holding-pencil-looking-away-during-work-office-indoor-portrait-busy-long-haired-female-accountant-using-computer.png"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                  Container(
                                    width: 168,
                                    height: 37,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Colors.transparent,
                                        boxShadow: [ BoxShadow(
                                          color: Colors.white54,
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(0, 3), // changes position of shadow
                                        ),]
                                    ),
                                    child: Center(
                                      child: Text("تصميم فوتوجرافي", style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: ArabicFonts.Tajawal,
                                        package: 'google_fonts_arabic',
                                      ),),
                                    ),
                                  )

                                ],
                              ),
                            ),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailScreen()));
                            },
                          ),
                          InkWell(
                            child: Container(
                              width: 168,
                              height: 123,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: AssetImage("asset/images/thoughtful-blonde-woman-glasses-holding-pencil-looking-away-during-work-office-indoor-portrait-busy-long-haired-female-accountant-using-computer.png"),
                                      fit: BoxFit.cover
                                  )
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    width: 168,
                                    height: 86,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                            image: AssetImage("asset/images/thoughtful-blonde-woman-glasses-holding-pencil-looking-away-during-work-office-indoor-portrait-busy-long-haired-female-accountant-using-computer.png"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                  Container(
                                    width: 168,
                                    height: 37,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Colors.transparent,
                                        boxShadow: [ BoxShadow(
                                          color: Colors.white54,
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(0, 3), // changes position of shadow
                                        ),]
                                    ),
                                    child: Center(
                                      child: Text("تصميم فوتوجرافي", style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: ArabicFonts.Tajawal,
                                        package: 'google_fonts_arabic',
                                      ),),
                                    ),
                                  )

                                ],
                              ),
                            ),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailScreen()));
                            },
                          )
                        ],
                      );
                    }
                ),

              ),
            )
          ],
        )
      ),

    );
  }
}
