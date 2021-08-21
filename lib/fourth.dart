import 'package:flutter/material.dart';

class Fourth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(minHeight: 900, maxHeight: 1080),
      child: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              // width: double.infinity,
              // constraints: BoxConstraints(minHeight: 900, maxHeight: 1080),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("javier-miranda-xB2XP29gn10-unsplash.png"),
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(100),
                width: 500,
                height: 650,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'CONTACT US',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      'Drop us a message',
                      style: TextStyle(fontSize: 20, color: Color(0xff2C2C2C)),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,

                        labelStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        labelText: 'Name',
                        // focusedBorder: OutlineInputBorder(
                        //   borderSide: BorderSide(color: Colors.white),

                        // ),
                        // enabledBorder: OutlineInputBorder(
                        //   borderSide: BorderSide(color: Colors.white),
                        // ),
                        // border: OutlineInputBorder(
                        //   borderSide: BorderSide(color: Colors.white),
                        // ),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        labelText: 'Email',
                      ),
                    ),
                    TextFormField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        labelText: 'Message',
                      ),
                    ),
                    FlatButton(
                      minWidth: 150,
                        padding: EdgeInsets.all(20),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(
                                color: Color(0xff707070),
                                width: 1,
                                style: BorderStyle.solid)),
                        child: Text('Send')),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.12,
                  child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          icon: Image.asset(
                            'instagram.png',
                            height: 30,
                            width: 30,
                          ),
                          onPressed: () {}),
                      IconButton(
                          icon: Image.asset(
                            'facebook-circular-logo.png',
                            height: 30,
                            width: 30,
                          ),
                          onPressed: () {}),
                      IconButton(
                          icon: Image.asset(
                            'twitter.png',
                            height: 30,
                            width: 30,
                          ),
                          onPressed: () {}),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                      Text(
                        'HOME',
                        style:
                            TextStyle(fontSize: 16, ),
                      ),
                      Text(
                        'ABOUT',
                        style:
                            TextStyle(fontSize: 16, ),
                      ),
                      Text(
                        'DOWNLOAD THE APP',
                        style:
                            TextStyle(fontSize: 16, ),
                      ),
                      Text(
                        'CONTACT',
                        style:
                            TextStyle(fontSize: 16, ),
                      ),
                    ],
                  ),
                ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.black,
                          child: Image.asset(
                            'Group_8.png',
                            height: 30,
                            width: 30,
                          ),
                        ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
