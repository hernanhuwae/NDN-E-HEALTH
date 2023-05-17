import 'package:flutter/material.dart';
import 'package:ndn_skin_cancer_app_capstone/pagePasien/checkupPasien.dart';
import 'package:ndn_skin_cancer_app_capstone/pages/homepage.dart';
import '../themeNDN/tema.dart';

class monitoringDokter extends StatelessWidget {
  const monitoringDokter({super.key});

  @override
  Widget build(BuildContext context) {
    Widget TopMonitoringDokter() {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50, left: 40, right: 40),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome',
                        style: teksHitam.copyWith(
                            fontSize: 16, fontWeight: semibold),
                      ),
                      Text(
                        'Johnny',
                        style: teksHitam.copyWith(
                          fontSize: 20,
                          fontWeight: bold,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('galeri/profile.png'))),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.only(left: 34, right: 34, top: 34),
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('galeri/dashboard.png')),
                borderRadius: BorderRadius.circular(18)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                width: 120,
                height: 100,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('galeri/logo.png'))),
              ),
              Text(
                'NDN E-HEALTH',
                style: teksKuning.copyWith(fontWeight: bold, fontSize: 16),
              ),
              Text(
                'PENDETEKSI KANKER KULIT',
                style: teksPutih.copyWith(
                  fontSize: 10,
                  fontWeight: semibold,
                ),
              )
            ]),
          )
        ],
      );
    }

    Widget bodyMonitoringDokter() {
      return Container(
        margin: EdgeInsets.only(top: 220),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            color: Colors.white),
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 180, left: 70, right: 70),
                width: double.infinity,
                height: 180,
                color: Color(0xffFFC97B),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'galeri/monitoring.png',
                      width: 95,
                      height: 95,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Monitoring',
                        style: teksHitam.copyWith(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                    )
                  ],
                ))
          ],
        ),
      );
    }

    Widget NavbarBawahMonitoringDokter() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 70,
          decoration:
              BoxDecoration(border: Border.all(width: 2, color: Colors.grey)),
          child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => homePageNdn()));
              },
              icon: Icon(
                Icons.home,
                size: 35,
              )),
        ),
      );
    }

    return Scaffold(
      backgroundColor: biru,
      body: Stack(
        children: [
          bodyMonitoringDokter(),
          TopMonitoringDokter(),
          NavbarBawahMonitoringDokter(),
        ],
      ),
    );
  }
}
