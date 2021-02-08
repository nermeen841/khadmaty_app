import 'package:flutter/material.dart';
import 'package:khadmaty_app/core/designe_utiliti.dart';


class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.only( top: 300),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("asset/images/background.png"),
                  fit: BoxFit.cover
              ),
            ),
            child: Center(
              child: Column(
                children: [
                  log_container("الاسم", "asset/images/Path 108.png", TextInputType.text , 15, 15),
                  SizedBox( height: 15,),
                  log_container("البريد الالكتروني", "asset/images/Path 1.png" , TextInputType.emailAddress, 0 , 0),
                  SizedBox( height: 15,),
                  log_container("كلمه المرور", "asset/images/Path 2.png" , TextInputType.text, 0 , 0),
                  SizedBox( height: 15,),
                  log_container("الجوال", "asset/images/Path 109.png" , TextInputType.number, 15 , 15),
                  SizedBox( height: 20,),
                  commen_button("دخول", context)
                ],
              ),
            ),
          ),
        )

    );
  }
}
