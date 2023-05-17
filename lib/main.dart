import 'package:flutter/material.dart';
import 'package:ndn_skin_cancer_app_capstone/pages/homepage.dart';
import 'package:ndn_skin_cancer_app_capstone/pages/splashscreenNdn.dart';
import 'package:ndn_skin_cancer_app_capstone/themeNDN/tema.dart';

void main() {
  runApp(MyNdn());
}

class MyNdn extends StatelessWidget {
  const MyNdn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => ndnSplashScreen(),
        '/HomePage': (context) => homePageNdn(),
      },
    );
  }
}
