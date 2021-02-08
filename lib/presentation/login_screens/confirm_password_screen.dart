import 'package:flutter/material.dart';
import 'package:khadmaty_app/core/designe_utiliti.dart';
class ConfirmpasswordScreen extends StatefulWidget {
  @override
  _ConfirmpasswordScreenState createState() => _ConfirmpasswordScreenState();
}

class _ConfirmpasswordScreenState extends State<ConfirmpasswordScreen> {
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
                    log_container("كلمه المرور الجديده", "asset/images/Path 2.png" , TextInputType.text , 1, 1),
                    SizedBox( height: 15,),
                    log_container("تاكيد كلمه المرور", "asset/images/Path 2.png" , TextInputType.text , 1, 1),
                    SizedBox( height: 20,),
                    commen_button("دخول", context)

                  ],

                ),
              )

          ),
        )

    );
  }
}
