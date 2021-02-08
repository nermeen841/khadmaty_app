import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperScreen extends StatefulWidget {
  @override
  _SwiperScreenState createState() => _SwiperScreenState();
}

class _SwiperScreenState extends State<SwiperScreen> {

  List<Image> _images = [
   Image.asset("asset/images/business-characters-team-work-office-people-corporate-employee-cartoon-teamwork-communication-business-team-illustration_176516-369.png" , fit: BoxFit.cover,),
    Image.asset("asset/images/thoughtful-blonde-woman-glasses-holding-pencil-looking-away-during-work-office-indoor-portrait-busy-long-haired-female-accountant-using-computer.png" , fit: BoxFit.cover,),
    Image.asset("asset/images/top-view-businessmen-analyzing-bar-charts-laptop.png" , fit: BoxFit.cover,)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 335,
        height: 200,
        decoration: BoxDecoration(
          boxShadow: [ BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
          ],
        ),
        child: Swiper(
          autoplay: true,
          itemCount: _images.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context , int index){
            return _images[index];
          },
        ),
      ),

    );
  }
}
