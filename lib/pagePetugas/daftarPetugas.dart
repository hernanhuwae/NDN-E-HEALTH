import 'package:flutter/material.dart';
import 'package:ndn_skin_cancer_app_capstone/pagePetugas/loginPetugas.dart';
import 'package:ndn_skin_cancer_app_capstone/share/tombolForm.dart';
import 'package:ndn_skin_cancer_app_capstone/share/tombolMasuk.dart';
import '../themeNDN/tema.dart';

class PetugasDaftar extends StatelessWidget {
  const PetugasDaftar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: basic,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 243,
                    height: 213,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('galeri/logo.png'))),
                  ),
                  Container(
                    child: Text(
                      'NDN E-HEALTH',
                      style: teksKuning.copyWith(
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                      ),
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
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 26, bottom: 8),
              child: Text(
                'DAFTAR',
                style: teksPutih.copyWith(
                  fontSize: 36,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            allTombolNdn(
              hidetext: false,
              teksForm: 'Email',
            ),
            allTombolNdn(
              hidetext: false,
              teksForm: 'Username',
            ),
            allTombolNdn(
              hidetext: true,
              teksForm: 'ID NUMBER (Buat 4 Digit)',
            ),
            SizedBox(
              height: 100,
            ),
            customTombolMasuk(
              textMasuk: 'MASUK',
              navigasi: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PetugasLogin()));
              },
            )
          ],
        ),
      ),
    );
  }
}
