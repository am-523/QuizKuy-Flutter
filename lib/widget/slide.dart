import 'package:flutter/material.dart';

import '../theme.dart';

class SlideCard extends StatelessWidget {
  final String image;
  final String name;
  final String level;

  SlideCard({required this.image, required this.name, required this.level});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 244,
      height: 180,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('$image'),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: edge),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
            ),
            Text(
              '$level',
              style: mediaumTextStyle.copyWith(fontSize: 20, color: whiteColor),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              '$name',
              style: mediaumTextStyle.copyWith(fontSize: 36, color: whiteColor),
            )
          ],
        ),
      ),
    );
  }
}
