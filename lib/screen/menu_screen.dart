import 'package:flutter/material.dart';
import 'package:quizkuy/theme.dart';
import 'package:quizkuy/widget/slide.dart';

import 'detail_quiz_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF6F7),
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icon.png',
                        width: 79,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello, Jason',
                            style: boltwhiteTextStyle.copyWith(
                                fontSize: 18, color: blackColor),
                          ),
                          Text(
                            'Let’s start your quiz now !',
                            style: regularTextStyle.copyWith(fontSize: 14),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: edge),
                    child: Container(
                      height: 180,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          SlideCard(
                            image: 'assets/b1.png',
                            level: 'Level 2',
                            name: 'Bahasa',
                          ),
                          SlideCard(
                            image: 'assets/b2.png',
                            level: 'Level 2',
                            name: 'Bahasa',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      border: Border.all(color: Colors.black, width: 3.0),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(44.0),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: edge),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Recent Quiz",
                            style: mediaumTextStyle.copyWith(fontSize: 18),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailQuiz()));
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(22),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(22),
                                  side: BorderSide(
                                      color: Colors.black, width: 2.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: ListTile(
                                    leading: Image.asset(
                                      'assets/planet.png',
                                      width: 65,
                                    ),
                                    title: Text(
                                      'Astronomy',
                                      style: mediaumTextStyle.copyWith(
                                          fontSize: 22),
                                    ),
                                    subtitle:
                                        Text('Learn about the Solar System'),
                                    trailing: Image.asset('assets/Play.png'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(22),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22),
                                side:
                                    BorderSide(color: Colors.black, width: 2.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: ListTile(
                                  leading: Image.asset('assets/sains.png'),
                                  title: Text(
                                    'Sains',
                                    style:
                                        mediaumTextStyle.copyWith(fontSize: 22),
                                  ),
                                  subtitle: Text(
                                      'Educacao Fisica, Autismo e Inclusao'),
                                  trailing: Image.asset('assets/Play.png'),
                                ),
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(22),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22),
                                side:
                                    BorderSide(color: Colors.black, width: 2.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: ListTile(
                                  leading: Image.asset('assets/mtk.png'),
                                  title: Text(
                                    'Mathematics',
                                    style:
                                        mediaumTextStyle.copyWith(fontSize: 22),
                                  ),
                                  subtitle: Text(
                                      'Learn fourth grade math—arithmetic,'),
                                  trailing: Image.asset('assets/Play.png'),
                                ),
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(22),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22),
                                side:
                                    BorderSide(color: Colors.black, width: 2.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: ListTile(
                                  leading:
                                      Image.asset('assets/color-palette.png'),
                                  title: Text(
                                    'Design',
                                    style:
                                        mediaumTextStyle.copyWith(fontSize: 22),
                                  ),
                                  subtitle: Text(
                                      'Learn fourth grade math—arithmetic,'),
                                  trailing: Image.asset('assets/Play.png'),
                                ),
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(22),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22),
                                side:
                                    BorderSide(color: Colors.black, width: 2.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: ListTile(
                                  leading: Image.asset('assets/medal.png'),
                                  title: Text(
                                    'Olympiade',
                                    style:
                                        mediaumTextStyle.copyWith(fontSize: 22),
                                  ),
                                  subtitle: Text(
                                      'Learn fourth grade math—arithmetic,'),
                                  trailing: Image.asset('assets/Play.png'),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 33,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
