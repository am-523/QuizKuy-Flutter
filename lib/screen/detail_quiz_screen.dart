import 'package:flutter/material.dart';
import 'package:quizkuy/screen/details_screen.dart';
import 'package:quizkuy/theme.dart';

import 'menu_screen.dart';

class DetailQuiz extends StatelessWidget {
  const DetailQuiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg2.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: edge),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: blackColor, width: 4.0),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                width: MediaQuery.of(context).size.width,
                height: 393,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Astronomy',
                      style: mediaumTextStyle.copyWith(fontSize: 36),
                    ),
                    Image.asset(
                      'assets/tele.png',
                      width: 200,
                    ),
                    Text(
                      'Level 5',
                      style: mediaumTextStyle.copyWith(fontSize: 24),
                    )
                  ],
                ),
              ),
              Container(
                width: 220,
                height: 50,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen()));
                  },
                  color: Color(0xffFFC10F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                    side: BorderSide(color: Colors.black, width: 2.0),
                  ),
                  child: Text(
                    'Start',
                    style: regularTextStyle.copyWith(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
