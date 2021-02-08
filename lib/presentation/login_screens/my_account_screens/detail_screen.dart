import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:khadmaty_app/core/designe_utiliti.dart';
import 'package:khadmaty_app/core/designe_utiliti_drawer_pages.dart';
import 'package:khadmaty_app/presentation/login_screens/buttom_nav_screens/swiper_screen.dart';
import 'package:khadmaty_app/presentation/login_screens/my_account_screens/make_order.dart';
import 'package:khadmaty_app/presentation/login_screens/my_account_screens/more_review_page.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: commen_appbar(context),
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 60, top: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Container(
                    width: 285,
                    height: 255,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 280,
                          height: 223,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: SwiperScreen(),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SmoothStarRating(
                               rating: 3,
                              isReadOnly: true,
                              size: 20,
                              color: HexColor("#EA8600"),
                              borderColor: HexColor("#EA8600"),
                              filledIconData: Icons.star,
                              halfFilledIconData: Icons.star_half,
                              defaultIconData: Icons.star_border,
                              starCount: 5,
                              allowHalfRating: true,
                              spacing: 2.0,
                              onRated: (value) {
                                print("rating value -> $value");
                                // print("rating value dd -> ${value.truncate()}");
                              },
                            ),
                            SizedBox( width: 10,),
                            InkWell(
                              child: Image.asset("asset/images/like(-4.png" , fit: BoxFit.cover,),
                              onTap: (){},
                            ),
                           // SizedBox( width: 5,),
                            Text("9 ايجابي" , style: TextStyle(
                              color: HexColor("#037FC6"),
                              fontFamily: ArabicFonts.Tajawal,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              package: 'google_fonts_arabic',
                            ),),
                           // SizedBox( width: 10,),
                            InkWell(
                              child: Image.asset("asset/images/like(-3.png" , fit: BoxFit.cover,),
                              onTap: (){},
                            ),
                           // SizedBox( width: 5,),
                            Text("0 سلبي" , style: TextStyle(
                              color: HexColor("#037FC6"),
                              fontFamily: ArabicFonts.Tajawal,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              package: 'google_fonts_arabic',
                            ),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    child: Image.asset("asset/images/arrow_back.png", width: 45, height: 45, fit: BoxFit.cover,),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),

                ],
              ),
              SizedBox( height: 10,),
              Text(".. اهلا بكم في خدماتي "
                  ".. معكم المهندس المعماري باسل احمد"
                  ".. خبره في التصميم المعماري و العمراني "
                  "تصميم ثلاثي الابعاد" , style: TextStyle(
                color: Colors.black,
                fontFamily: ArabicFonts.Tajawal,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                package: 'google_fonts_arabic',
              ),),
              SizedBox( height: 10,),
              Center(
                child: InkWell(
                  child: Container(
                      width: 98,
                      height: 32,
                      decoration: BoxDecoration(
                        color: HexColor("#037FC6"),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [ BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                        ],

                      ),
                      child: Center(
                        child: Text("اطلب الان" , style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: ArabicFonts.Tajawal,
                          package: 'google_fonts_arabic',
                        ),),
                      )
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute( builder: (context)=> MakeorderScreen()));
                  },
                ),

              ),
              SizedBox( height: 10,),
              Text("قيم الخدمه ", style: TextStyle(
                color: Colors.black,
                fontFamily: ArabicFonts.Tajawal,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                package: 'google_fonts_arabic',
              ),),
              SizedBox( height: 10,),
              _send_mes_container(),
              SizedBox( height: 15,),
              Center(
                child: _send_button(),
              ),
              SizedBox( height: 15,),
              Text("اراء المشتركين ", style: TextStyle(
                color: Colors.black,
                fontFamily: ArabicFonts.Tajawal,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                package: 'google_fonts_arabic',
              ),),
              SizedBox( height: 10,),
                  _reviews_container(),
              SizedBox( height: 10,),
                  Center(
                    child: RaisedButton(
                      child: Text("المزيد", style: TextStyle(
                        color: Colors.white,
                        fontFamily: ArabicFonts.Tajawal,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        package: 'google_fonts_arabic',

                      ),),
                      color: HexColor("#FE0E0E"),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> MoreReviewPage()));
                      },
                    ),
                  )
            ],
          ),
        ),
      ),
    );
  }

  _send_mes_container(){
    return Container(
      width: 340,
      height: 176,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all( color: HexColor("#9FA9B7"))
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SmoothStarRating(
               // rating: 4,
                isReadOnly: false,
                size: 20,
                color: HexColor("#EA8600"),
                borderColor: HexColor("#EA8600"),
                filledIconData: Icons.star,
                halfFilledIconData: Icons.star_half,
                defaultIconData: Icons.star_border,
                starCount: 5,
                allowHalfRating: true,
                spacing: 2.0,
                onRated: (value) {
                  print("rating value -> $value");
                  // print("rating value dd -> ${value.truncate()}");
                },
              ),
              SizedBox( width: 10,),
              InkWell(
                child: Image.asset("asset/images/like(-4.png" , fit: BoxFit.cover,),
                onTap: (){},
              ),
              SizedBox( width: 10,),
              Text(" ايجابي" , style: TextStyle(
                color: HexColor("#037FC6"),
                fontFamily: ArabicFonts.Tajawal,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                package: 'google_fonts_arabic',
              ),),
              SizedBox( width: 20,),
              InkWell(
                child: Image.asset("asset/images/like(-3.png" , fit: BoxFit.cover,),
                onTap: (){},
              ),
              SizedBox( width: 10,),
              Text(" سلبي" , style: TextStyle(
                color: HexColor("#037FC6"),
                fontFamily: ArabicFonts.Tajawal,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                package: 'google_fonts_arabic',
              ),),
            ],
          ),
          Divider(
            thickness: 1,
            color: HexColor("#9FA9B7"),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "اكتب هنا ...",
              hintStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                fontFamily: ArabicFonts.Tajawal,
                package: 'google_fonts_arabic',

              ),
              errorBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              disabledBorder: InputBorder.none
            ),
          )

        ],
      ),
    );
  }


  _send_button(){
    return InkWell(
      child: Container(
          width: 77,
          height: 28,
          decoration: BoxDecoration(
            color: HexColor("#FE0E0E"),
            borderRadius: BorderRadius.circular(5),
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
      onTap: (){},
    );
  }


  _reviews_container(){
    return Container(
      width: 321,
      height: 250,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all( color: HexColor("#9FA9B7"))
      ),
      child: ListView.builder(
        itemCount: 3,
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
    );
  }

}
