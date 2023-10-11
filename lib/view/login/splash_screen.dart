import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pos/view-model/constants/constants.dart';
import 'package:pos/view-model/frontend/appbar.dart';
import 'package:pos/view-model/frontend/navigation.dart';
import 'package:pos/view/login/inception.dart';

import '../../view-model/backend/shared_preferences.dart';
import '../../view-model/frontend/appname.dart';
import '../../view-model/frontend/screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  inception() {
    Future.delayed(
      const Duration(seconds: 2),
      () async {
        bool isAdmin = await MySharedPreferences().isAdmin;
        bool isLoggedIn = FirebaseAuth.instance.currentUser != null;
        if (mounted) {
          Navigation nav = Navigation(context);
          nav.pushReplacement(
              // !isLoggedIn
              //     ? const
              Inception()
              // : nav.getMainScreenChild(isAdmin && isLoggedIn),
              );
        }
      },
    );
  }

  @override
  void initState() {
    inception();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Screen s = Screen(context);
    return Scaffold(
      backgroundColor: white,
      appBar: const ZeroAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          appName(),
          Lottie.asset(
            "$lottiePath/splashScreenAnimation.json",
            fit: BoxFit.fitWidth,
            alignment: Alignment.center,
            width: Screen(context).width * 0.9,
            frameRate: FrameRate(90),
          ),
          SizedBox(
            height: 80 * s.customWidth,
          ),
          Column(
            children: [
              Image.asset("$imagesPath/bbblogo.png", height: 50),
              const Text(
                "Streamlining Success, One Bill at a Time.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: black,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
