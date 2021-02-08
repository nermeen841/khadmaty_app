import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:khadmaty_app/core/designe_utiliti.dart';
import 'package:khadmaty_app/core/designe_utiliti_drawer_pages.dart';
import 'package:khadmaty_app/presentation/login_screens/my_account_screens/confirm_payment.dart';
class MakeorderScreen extends StatefulWidget {
  @override
  _MakeorderScreenState createState() => _MakeorderScreenState();
}

class _MakeorderScreenState extends State<MakeorderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commen_appbar(context),
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 60),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  normal_text("الاسم"),
                  InkWell(
                    child: Image.asset("asset/images/arrow_back.png", width: 45, height: 45, fit: BoxFit.cover,),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
              SizedBox( height: 15,),
              nam_container(TextInputType.name),
              SizedBox( height: 15,),
              normal_text("الهاتف"),
              SizedBox( height: 15,),
              nam_container(TextInputType.phone),
              SizedBox( height: 15,),
              normal_text("البريد الالكتروني"),
              SizedBox( height: 15,),
              nam_container(TextInputType.emailAddress),
              SizedBox( height: 15,),
              normal_text("اكتب طلبك"),
              SizedBox( height: 15,),
              _message_order_container(),
              SizedBox( height: 15,),
              normal_text("ارفاق ملف"),
              SizedBox( height: 15,),
              _upload_file_cont(),
              SizedBox( height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                    child: Text("مزيد" , style: TextStyle(
                      color: HexColor("#037FC6"),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      fontFamily: ArabicFonts.Tajawal,
                      package: 'google_fonts_arabic',
                    ),),
                    onPressed: (){
                      ///TODO: ACCESS PHONE TO UPLOAD MORE FILES ,, PIC
                    },
                  ),
                  InkWell(
                    child: Container(
                        width: 77,
                        height: 28,
                        decoration: BoxDecoration(
                          color: HexColor("#FE0E0E"),
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
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ConfirmpaymentScreen()));
                    },
                  ),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
_message_order_container(){
  return Container(
    width: 337,
    height: 132,
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

  _upload_file_cont(){
    return Container(
      width: 337,
      height: 132,
      padding: EdgeInsets.all(10),
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
      child: Center(
        child: InkWell(
          child: Image.asset("asset/images/cloud_download.png", fit: BoxFit.cover, width: 120, height: 80,),
          onTap: (){
            ///TODO: ACCESS PHONE TO UPLOAD DATA
          },
        ),
      ),
    );
  }
}
