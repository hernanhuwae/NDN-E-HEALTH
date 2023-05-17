import 'package:flutter/material.dart';
import 'package:ndn_skin_cancer_app_capstone/pageDokter/monitoringDokter.dart';
import 'package:ndn_skin_cancer_app_capstone/share/tombolForm.dart';
import 'package:ndn_skin_cancer_app_capstone/share/tombolMasuk.dart';
import '../themeNDN/tema.dart';

class DokterLoginPage extends StatelessWidget {
  const DokterLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: basic,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 80, bottom: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 243,
                    height: 213,
                    decoration: BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage('galeri/logo.png')),
                    ),
                  ),
                  Text(
                    'NDN E-HEALTH',
                    style: teksKuning.copyWith(fontSize: 32, fontWeight: bold),
                  ),
                  Text(
                    'PENDETEKSI KANKER KULIT',
                    style: teksPutih.copyWith(fontSize: 16, fontWeight: bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 26, bottom: 32),
              child: Text(
                'LOGIN',
                style: teksPutih.copyWith(
                  fontSize: 33,
                  fontWeight: bold,
                ),
              ),
            ),
            allTombolNdn(hidetext: false, teksForm: 'Username Dokter'),
            SizedBox(
              height: 25,
            ),
            allTombolNdn(hidetext: false, teksForm: 'Kode Tiket'),
            SizedBox(
              height: 100,
            ),
            customTombolMasuk(
                textMasuk: 'MASUK',
                navigasi: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => monitoringDokter()));
                })
          ],
        ),
      ),
    );
  }
}
