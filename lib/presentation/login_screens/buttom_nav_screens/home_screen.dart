import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:khadmaty_app/core/designe_utiliti.dart';
import 'package:khadmaty_app/core/home_screen_detail.dart';
import 'package:khadmaty_app/presentation/login_screens/appbar_screens/notification_screen.dart';
import 'package:khadmaty_app/presentation/login_screens/buttom_nav_screens/swiper_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      drawer: Container(
        width: 220,
        height: MediaQuery.of(context).size.height,
        child: drawer_data(context),
        decoration: BoxDecoration(
          border: Border.all(color: HexColor('#000000')),
          color: Colors.white,
          boxShadow: [ BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: HexColor("#037FC6"),
        elevation: 0.0,
        automaticallyImplyLeading: false,
        leading: InkWell(
          child: Icon(Icons.menu , color: Colors.white, size: 30,),
          onTap: (){
            _scaffoldKey.currentState.openDrawer();
          }
        ),
        actions: [
          InkWell(
            child: Image.asset("asset/images/notification.png"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> AppnotifyScreen()));
            },
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("asset/images/background.png"),
              fit: BoxFit.cover
          ),
        ),
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: ( BuildContext context, int index){
            return Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 130,
                    color: HexColor("#F5F5F5"),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all( 15),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("سعداء بمرورك الكريم", style: TextStyle(
                                color: Colors.black,
                                fontFamily: ArabicFonts.Tajawal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                package: 'google_fonts_arabic',
                              ),),
                              SizedBox( width: 15,),
                              Image.asset("asset/images/smiling-emoticon-square-face.png"),
                            ],
                          ),
                        ),
                        Center(child: search_button(context),),
                      ],
                    ),
                  ),
                  SizedBox( height: 15,),
                  Container(
                    width: 335,
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all( color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: SwiperScreen(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10 , left: 250),
                    child: Text("خدماتنا" , style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: ArabicFonts.Tajawal,
                      package: 'google_fonts_arabic',
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 60),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            card_container2("asset/images/XMLID_146_.png", "كتابه و ترجمه", context),
                            card_container1("asset/images/brain.png" , "دعم فني عن بعد", context),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            card_container2("asset/images/color-control.png", "تصميمات", context),
                            card_container1("asset/images/infographic-elements.png" , "انفوجرافيك", context),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            card_container2("asset/images/XMLID_350_.png", "تكنولوجيا" , context),
                            card_container1("asset/images/chat(1).png" , "حل الواجبات" , context),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            card_container2("asset/images/questions.png", "اشعارات" , context),
                            card_container1("asset/images/online-course.png" , "التعلم عن بعد" , context),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
            );
          },

        ),
      )
    );


  }

}
