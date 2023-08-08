import 'dart:async';

import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

import '../../../Login/presntation/View/login.dart';

class Splash extends StatefulWidget {
  Splash({Key? key}) : super(key: key);


  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  Future<Widget> futureCall() async {
    // do async operation ( api call, auto login)
    return Future.value(new Login());
  }

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      durationInSeconds: 1,
      logo: Image.network(
          'https://tse4.mm.bing.net/th?id=OIP.CRb9hVIaelIfVViLu4OUGAHaJV&pid=Api&P=0&h=180'),
      title: Text(
        "Title",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.grey.shade400,
      showLoader: true,
      loadingText: Text("Loading..."),
      futureNavigator: futureCall(),
    );
  }
}