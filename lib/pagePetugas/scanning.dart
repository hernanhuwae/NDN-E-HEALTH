import 'package:flutter/material.dart';
import 'package:ndn_skin_cancer_app_capstone/pages/homepage.dart';
import '../themeNDN/tema.dart';

class Scanning extends StatelessWidget {
  const Scanning({super.key});

  @override
  Widget build(BuildContext context) {
    Widget headerScan() {
      Widget dashboard() {
        return Container(
          margin: EdgeInsets.only(top: 25),
          width: 295,
          height: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('galeri/dashboard.png'))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 150,
                height: 70,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('galeri/logo.png'))),
              ),
              Container(
                margin: EdgeInsets.only(left: 7),
                child: Text(
                  'NDN E-HEALTH',
                  style: teksKuning.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 7),
                child: Text(
                  'PENDETEKSI KANKER KULIT',
                  style: teksPutih.copyWith(
                    fontSize: 13,
                    fontWeight: bold,
                  ),
                ),
              )
            ],
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 50, left: 50, right: 35),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome',
                        style: teksHitam.copyWith(
                          fontSize: 17,
                          fontWeight: normal,
                        ),
                      ),
                      Text(
                        'Hernan Huwae',
                        style: teksHitam.copyWith(
                          fontSize: 20,
                          fontWeight: semibold,
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: 38,
                    height: 38,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('galeri/profile.png'))),
                  ),
                ],
              ),
            ),
            dashboard(),
          ],
        ),
      );
    }

    Widget bodyScan() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 185),
        decoration: BoxDecoration(
            color: putih,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(80), topRight: Radius.circular(80))),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 200),
              width: 210,
              height: 165,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Color(0xffFFC97B),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 7),
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('galeri/scan.png'))),
                  ),
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(padding: EdgeInsets.all(5)),
                      child: Text(
                        'SCANNING',
                        style: teksHitam.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget navbarBottom() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            alignment: Alignment.center,
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
                color: putih, border: Border.all(width: 2, color: Colors.grey)),
            child: Padding(
                padding: EdgeInsets.all(10),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => homePageNdn()));
                  },
                  icon: Icon(Icons.home),
                  iconSize: 30,
                ))),
      );
    }

    return Scaffold(
        backgroundColor: biru,
        body: Stack(
          children: [
            bodyScan(),
            headerScan(),
            navbarBottom(),
          ],
        ));
  }
}
