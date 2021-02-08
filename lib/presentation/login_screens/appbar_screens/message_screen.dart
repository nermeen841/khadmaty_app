import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:khadmaty_app/core/designe_utiliti.dart';
import 'package:khadmaty_app/core/designe_utiliti_drawer_pages.dart';

class MessageScreen extends StatefulWidget {
  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#9FA9B7"),
      appBar: commen_appbar(context),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 60),
        color: HexColor("#9FA9B7"),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 315,
                height: 312,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [ BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                  ],
                ),
                child: Text("jndkvnoanoeaosdboskjseo"
                    "vkvsdkbsksjkpekhpkh"
                    "zvdvksfjkdjdrkjhetkjeth"
                    "vmxdb;ksfmbkdfmdgknmdgnkmfgkndb"
                    "zmdvksbskbmdkndnkfgnkf"
                    "bmkfbkdmfkdnd;knf;",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: ArabicFonts.Tajawal,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    package: 'google_fonts_arabic',
                  ),
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
