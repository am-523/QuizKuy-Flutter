import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../theme.dart';
import 'menu_screen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Result.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 180,
              left: 20,
              right: 20,
              bottom: 300,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 271,
                decoration: BoxDecoration(
                  color: Color(0xff00D7FA),
                  border: Border.all(color: blackColor, width: 4.0),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 90,
                      ),
                      Text(
                        "Your final score is",
                        style: mediaumTextStyle.copyWith(fontSize: 26),
                      ),
                      Container(
                        width: 200.0,
                        height: 150.0,
                        margin: EdgeInsets.all(80.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: whiteColor, width: 4.0),
                            color: Color(0xff7C3CFF),
                            shape: BoxShape.circle),
                        child: Center(
                          child: Text(
                            "60",
                            style: mediaumTextStyle.copyWith(
                                fontSize: 72, color: whiteColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: 100,
              height: 150,
              width: 206,
              child: Container(
                width: 120,
                height: 120,
                child: Image.asset(
                  'assets/u1.png',
                  width: 20,
                ),
              ),
            ),
            Positioned(
              top: 770,
              left: 100,
              height: 50,
              width: 206,
              child: Container(
                width: 220,
                height: 50,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MenuScreen()));
                  },
                  color: Color(0xff7C3CFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                    side: BorderSide(color: Colors.white, width: 2.0),
                  ),
                  child: Text(
                    'Try Again',
                    style: regularTextStyle.copyWith(
                        fontSize: 18, color: whiteColor),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
