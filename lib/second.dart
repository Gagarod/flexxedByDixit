import 'package:flutter/material.dart';

class ListClass {
  String heading;
  String body;
  String image;
  ListClass({this.heading, this.body, this.image});
}

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      constraints: BoxConstraints(minHeight: 900, maxHeight: 1080),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("shapelined-_JBKdviweXI-unsplash.png"),
        ),
      ),
      child: Container(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text('PROFILE TYPES',style: TextStyle(fontSize: 40),), 
          Container(height: 700,child: SetCards())
          ],
        ),
      ),
    );
  }
}

List<ListClass> cards = [
  ListClass(
      heading: 'BUSINESS/ INDIVIDUAL USER',
      body:
          'Lorem ipsum dolor sit amet\nLorem ipsum dolor sit amet\nLorem ipsum dolor sit amet\nLorem ipsum dolor sit amet',
      image: 'Group_6298.png'),
  ListClass(
      heading:'BUSINESS ISSUING INSTITUTION',
      body: 'Lorem ipsum dolor sit amet\nLorem ipsum dolor sit amet\nLorem ipsum dolor sit amet\nLorem ipsum dolor sit amet',
      image: 'undraw_Collaboration_re_vyau.png'),
  ListClass(
      heading:'BUSINESS 3RD PARTY VERIFIER',
      body: 'Lorem ipsum dolor sit amet\nLorem ipsum dolor sit amet\nLorem ipsum dolor sit amet\nLorem ipsum dolor sit amet',
      image: 'undraw_the_search_s0xf.png'),
];

class SetCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: cards.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(30),
            margin: EdgeInsets.all(8),
            width: 444,
            height: 689,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.white,
              shadowColor: Colors.black,
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30,45,30,45),
                child: Column(children: [
                  Container(
                    height: 205,
                    padding: EdgeInsets.all(8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset('${cards[index].image}',
                          fit: BoxFit.fitHeight),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text(cards[index].heading,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  SizedBox(height: 54,),
                  Text(cards[index].body,style: TextStyle(fontSize: 20),),
                  SizedBox(height: 76,),
                  ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(18),
                    primary: Color(0xff2C2C2C)
                  ),
                  child: Text('Join As',style: TextStyle(fontSize: 20),),)
                ]),
              ),
            ),
          );
        });
  }
}
