import 'package:flutter/material.dart';

class Third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(minHeight: 900, maxHeight: 1080),
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
                left: 0,
                child: Image.asset('mockup_1.png'),
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width * 0.7),
            Positioned(
              right: 20,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 50,horizontal: 100),
                    child: Text(
                      'DOWNLOAD THE APP NOW!',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      FlatButton.icon(
                        padding: EdgeInsets.all(15),
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                              side: BorderSide(
                                  color: Color(0xff707070),
                                  width: 1,
                                  style: BorderStyle.solid)),
                          icon: Image.asset('app-store.png',height: 25,width: 25,),
                          label: Text('App Store')),
                          SizedBox(width: 20,),
                      FlatButton.icon(
                        padding: EdgeInsets.all(15),
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                              side: BorderSide(
                                  color: Color(0xff707070),
                                  width: 1,
                                  style: BorderStyle.solid)),
                          icon: Image.asset('playstore.png',height: 25,width: 25,),
                          label: Text('Google PlayStore')),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
