import 'package:flutter/material.dart';
import 'package:khadmaty_app/core/designe_utiliti.dart';
import 'package:khadmaty_app/core/designe_utiliti_drawer_pages.dart';

class ContactusScreen extends StatefulWidget {
  @override
  _ContactusScreenState createState() => _ContactusScreenState();
}

class _ContactusScreenState extends State<ContactusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F5F5F5"),
      appBar: commen_appbar(context),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: HexColor("#F5F5F5"),
          padding: const EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 70),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    header_text("اترك لنا رساله"),
                    InkWell(
                      child: Image.asset("asset/images/arrow_back.png", width: 45, height: 45, fit: BoxFit.cover,),
                      onTap: (){
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
                SizedBox( height: 20,),
                normal_text("الاسم"),
                SizedBox( height: 10),
                nam_container(TextInputType.name),
                SizedBox( height: 15),
                normal_text("البريد الالكتروني"),
                SizedBox( height: 10),
                nam_container(TextInputType.emailAddress),
                SizedBox( height: 15),
                normal_text("اكتب رسالتك"),
                SizedBox( height: 10),
                message_container(),
                SizedBox( height: 15),
                Center(
                  child: send_button(),
                )
              ],
            ),
          )
        ),
    );
  }
}
