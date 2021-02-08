import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:khadmaty_app/core/designe_utiliti.dart';
import 'package:khadmaty_app/core/designe_utiliti_drawer_pages.dart';

class MyaccountScreen extends StatefulWidget {
  @override
  _MyaccountScreenState createState() => _MyaccountScreenState();
}

class _MyaccountScreenState extends State<MyaccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: commen_appbar(context),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only(top: 20 , bottom: 60, left: 10, right: 10),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("مكتمل" , style: TextStyle(
                    color: HexColor("#037FC6"),
                    fontFamily: ArabicFonts.Tajawal,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    package: 'google_fonts_arabic',
                  ),),
                  InkWell(
                    child: Image.asset("asset/images/arrow_back.png", width: 45, height: 45, fit: BoxFit.cover,),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 340,
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
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                    itemBuilder: ( BuildContext context , int index){
                    return my_account_container( context);
                    }),
              ),
              SizedBox( height: 30,),
              Text("قيد الانتظار" , style: TextStyle(
                color: HexColor("#037FC6"),
                fontFamily: ArabicFonts.Tajawal,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                package: 'google_fonts_arabic',
              ),),
              SizedBox( height: 15,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 340,
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
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: ( BuildContext context , int index){
                      return my_account_container( context);
                    }),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
