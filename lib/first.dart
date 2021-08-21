import 'package:flutter/material.dart';
class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 900, maxHeight: 1080),
      width: double.infinity,
      color: Color(0xff1D1D1D),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: double.infinity,
            height: 140,
            child: Stack(
              alignment: Alignment.center,
              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Positioned(
                  top: 57,
                  left: 80,
                  width: 31,
                  height: 27,
                  child: Image.asset(
                    "menu.png",
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  top: 51,
                  right: 80,
                  width: 178,
                  height: 40,
                  child: Image.asset(
                    "Group_30.png",
                    color: Colors.white,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "Layer_2.png",
                        color: Colors.white,
                        height: 36,
                        width: 36,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'DOMINEUM',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "Layer_2.png",
                color: Colors.white,
                height: 578,
                width: 578,
              ),
              Container(
                width: 570,
                child: Column(
                  children: [
                    Text(
                      'VERIFICATION MADE EASY',
                      style: TextStyle(fontSize: 60, color: Colors.white),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'DOMINEUM CREDENTIAL VERIFICATION SYSTEM IS A 3 SIDED MARKETPLACE DESIGNED TO BRIDGE THE ONLINE AND OFFLINE WORLDS FOR SHARING VERIFIABLE DOCUMENTS AND CREDENTIALS BETWEEN ISSUING INSTITUTIONS, BUSINESSES/INDIVIDUALS AND 3RD PARTY VERIFIERS.',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "Group_6311.png",
                          color: Colors.white,
                          height: 63,
                          width: 192,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Image.asset(
                          "Group_6312.png",
                          color: Colors.white,
                          height: 63,
                          width: 247,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(80),
            child: Row(
              children: [
                Image.asset(
                  "Group_6324.png",
                  color: Colors.white,
                  height: 52,
                  width: 52,
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.end,
            ),
          )
        ],
      ),
    );
  }
}
