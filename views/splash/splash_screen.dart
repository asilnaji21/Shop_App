import 'dart:async';

import 'package:flutter/material.dart';

import '../../helper/navigator.dart';
import '../onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // ignore: prefer_typing_uninitialized_variables, unused_field
  Timer? _timer;

  _startDealy() {
    _timer = Timer(const Duration(seconds: 10), _goNext);
  }

  _goNext() {
    NavigationConfiguration.navigationConfiguration
        .navigateTo(context, OnBoardingScreen());
  }

  @override
  void initState() {
    super.initState();
    _startDealy();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Image.asset("assets/images/Splash.png"),
      ),
    );
  }
}
