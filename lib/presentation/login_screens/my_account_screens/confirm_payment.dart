import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:khadmaty_app/core/designe_utiliti.dart';
import 'package:khadmaty_app/core/designe_utiliti_drawer_pages.dart';

class ConfirmpaymentScreen extends StatefulWidget {
  @override
  _ConfirmpaymentScreenState createState() => _ConfirmpaymentScreenState();
}

class _ConfirmpaymentScreenState extends State<ConfirmpaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commen_appbar(context),
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        padding: const EdgeInsets.only(top: 15, right: 15, left: 15, bottom: 70),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  header_text("طلبك"),
                  InkWell(
                    child: Image.asset("asset/images/arrow_back.png", width: 45, height: 45, fit: BoxFit.cover,),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  )
                ],

              ),
              SizedBox( height: 15,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  header_text("الطلب"),
                  header_text("المجموع")
                ],
              ),
              SizedBox( height: 15,),
              _order_container(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("المجموع", style: TextStyle(
                    color: Colors.black,
                    fontFamily: ArabicFonts.Tajawal,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    package: 'google_fonts_arabic',
                  ),),
                  Text("20", style: TextStyle(
                    color: HexColor("#FE0E0E"),
                    fontFamily: ArabicFonts.Tajawal,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    package: 'google_fonts_arabic',
                  ),),
                ],
              ),
              SizedBox( height: 15,),
              _payment_options(),
              SizedBox( height: 15,),
              InkWell(
                child: Container(
                  width: 335,
                  height: 47,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: HexColor("#FE0E0E"),
                  ),
                  child: Center(
                    child: Text("تاكيد الطلب", style: TextStyle(
                      color: Colors.white,
                      fontFamily: ArabicFonts.Tajawal,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      package: 'google_fonts_arabic',
                    ),),
                  ),
                ),
                onTap: (){
                  _showAlertDialog(context);
                },
              ),

            ],
          ),
        ),
      ),

    );
  }

  _showAlertDialog(BuildContext context) {

      // set up the button
      Widget okButton = FlatButton(
        child: Text("OK"),
        onPressed: () {
          Navigator.pop(context);
        },
      );

      Widget cancelButton = FlatButton(
        child: Text("cancel"),
        onPressed: () {
          Navigator.pop(context);
        },
      );

      // set up the AlertDialog
      AlertDialog alert = AlertDialog(
        title: Text("تاكيد الطلب"),
        content: Text("هل تريد تاكيد الطلب ؟.."),
        actions: [
          okButton,
          cancelButton
        ],
      );

      // show the dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }



  _payment_options(){
    return Container(
      width: 355,
      height: 145,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all( color: HexColor("#9FA9B7"))
      ),
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         ListTile(
           leading: Radio(
             onChanged: (val){},
           ),
           trailing:  Image.asset("asset/images/download-removebg-preview.png", fit: BoxFit.cover,),
         ),
          ListTile(
            leading: Radio(
              onChanged: (val){},
            ),
            trailing:  Image.asset("asset/images/download-removebg-preview.png", fit: BoxFit.cover,),
          ),
        ],


      ),
    );
  }


  _order_container(){
    return Container(
      width: 354,
      height: 300,
      padding: const EdgeInsets.all(15),
      child: ListView.builder(
        itemCount: 10,
          itemBuilder: (BuildContext context, int index){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("تصميم لوجو 1x" , style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    fontFamily: ArabicFonts.Tajawal,
                    package: 'google_fonts_arabic',
                  ),),
                  Text("15" , style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    fontFamily: ArabicFonts.Tajawal,
                    package: 'google_fonts_arabic',
                  ),),
                  InkWell(
                    child: Image.asset("asset/images/Group 666.png" , fit: BoxFit.cover, width: 20, height: 20,),
                    onTap: (){},
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: HexColor("#9FA9B7"),
              )
            ],
          );
          }),
    );
  }
}
