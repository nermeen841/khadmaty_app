import 'package:flutter/material.dart';

class ShareScreen extends StatefulWidget {
  @override
  _ShareScreenState createState() => _ShareScreenState();
}

class _ShareScreenState extends State<ShareScreen> {


  void showModalSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Padding(
            padding: EdgeInsets.only(  left: 20 , right: 20),
            child: Container(
              height:210,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.only( left: 10 , right: 10 ),
                    child:   Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon( Icons.face , color: Colors.amber,),
                            Icon(Icons.sentiment_very_satisfied , color: Colors.amberAccent,)

                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon( Icons.ac_unit , color: Colors.green,),
                            Icon(Icons.account_circle , color: Colors.blueAccent,)

                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );

        });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purpleAccent
    );
  }
}


