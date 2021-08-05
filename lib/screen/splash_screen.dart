import 'package:flutter/material.dart';
import 'package:quizkuy/screen/menu_screen.dart';

import '../theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg5.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(),
            Center(
              child: Container(
                width: 220,
                height: 50,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MenuScreen()));
                  },
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                    side: BorderSide(color: Colors.black, width: 2.0),
                  ),
                  child: Text(
                    'Get Started',
                    style: regularTextStyle.copyWith(fontSize: 18),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 120,
            ),
          ],
        ),
      ),
    );
  }
}
