import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:khadmaty_app/core/designe_utiliti.dart';
import 'package:khadmaty_app/presentation/login_screens/verification_code_test.dart';

import 'confirm_password_screen.dart';

class ForgetpasswordScreen extends StatefulWidget {
  @override
  _ForgetpasswordScreenState createState() => _ForgetpasswordScreenState();
}

class _ForgetpasswordScreenState extends State<ForgetpasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.only(top: 300),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("asset/images/background.png"),
                    fit: BoxFit.cover
                ),
              ),
              child: Center(
                child: Column(
                  children: [
                    log_container("البريد الالكتروني", "asset/images/Path 1.png" , TextInputType.emailAddress , 5 , 5),
                    SizedBox( height: 15,),
                    commen_button("ارسال الكود", context),
                    SizedBox( height: 15,),
                    Text("يرجي التحقق من الكود سيصل خلال دقائق" , style: TextStyle(
                      color: HexColor("#FE0E0E"),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: ArabicFonts.Tajawal,
                      package: 'google_fonts_arabic',
                    ),),
                    SizedBox( height: 10,),
                    PinCodeVerificationScreen(),
                    SizedBox( height: 10,),
                    InkWell(
                      child: Container(
                        width: 119 ,
                        height: 41,
                        decoration: BoxDecoration(
                          color: HexColor("#9FA9B7"),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text( "تسجيل" , style: TextStyle(
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> ConfirmpasswordScreen()));
                      },
                    )

                  ],

                ),
              )
          ),
        )

    );
  }
}
