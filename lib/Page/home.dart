import 'package:flutter/material.dart';
import 'package:short_code/components/myRefreshBottom.dart';
import '../animation/fade_animation.dart';
import '../components/myText.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        floatingActionButton: const MyRefreshBottom(
          icon: Icons.refresh,
          widget: Home(),
        ),
        // ignore: avoid_unnecessary_containers
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: myWidth * 0.08,
                    right: myWidth * 0.08,
                    top: myHeight * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const MyText(
                      text: '404',
                      size: 80,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      delay: 1,
                    ),
                    const MyText(
                      text: 'Page Not Found!',
                      size: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      delay: 1,
                    ),
                    SizedBox(
                      height: myHeight * 0.05,
                    ),
                    const MyText(
                      text:
                          'We are sorry, the page you request could not be found. Please go back to the homePage!',
                      size: 22,
                      fontWeight: FontWeight.normal,
                      color: Colors.black45,
                      delay: 1.5,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: myHeight * 0.1,
              ),
              FadeAnimation(delay: 1.5, child: Image.asset('assets/1.png')),
            ],
          ),
        ),
      ),
    );
  }
}
