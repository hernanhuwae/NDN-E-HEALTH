import 'dart:async';

import 'package:flutter/material.dart';
import '../themeNDN/tema.dart';

class ndnSplashScreen extends StatefulWidget {
  const ndnSplashScreen({super.key});

  @override
  State<ndnSplashScreen> createState() => _ndnSplashScreenState();
}

class _ndnSplashScreenState extends State<ndnSplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.pushNamed(context, '/HomePage');
    });
    return Scaffold(
      backgroundColor: basic,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.only(bottom: 20),
                width: 311,
                height: 272,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('galeri/logo.png')))),
            Text(
              'NDN E-HEALTH',
              style: teksKuning.copyWith(
                fontSize: 32,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'PENDETEKSI KANKER KULIT',
              style: teksPutih.copyWith(
                fontSize: 16,
                fontWeight: bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
