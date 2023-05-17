import 'package:flutter/material.dart';
import 'package:ndn_skin_cancer_app_capstone/pageDokter/loginDokter.dart';
import 'package:ndn_skin_cancer_app_capstone/pagePasien/loginPasien.dart';
import 'package:ndn_skin_cancer_app_capstone/pagePetugas/daftarPetugas.dart';
import '../themeNDN/tema.dart';

class homePageNdn extends StatelessWidget {
  const homePageNdn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: basic,
      body: Center(
        child: Column(
          children: [
            Container(
              width: 243,
              height: 213,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('galeri/logo.png'))),
            ),
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
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 46),
              width: 263,
              height: 42,
              decoration: BoxDecoration(
                  color: biru, borderRadius: BorderRadius.circular(30)),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PetugasDaftar()));
                  },
                  child: Text(
                    'PETUGAS',
                    style: teksHitam.copyWith(
                      fontSize: 16,
                      fontWeight: bold,
                    ),
                  )),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 46),
              width: 263,
              height: 42,
              decoration: BoxDecoration(
                  color: biru, borderRadius: BorderRadius.circular(30)),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPasien()));
                  },
                  child: Text(
                    'PASIEN',
                    style: teksHitam.copyWith(
                      fontSize: 16,
                      fontWeight: bold,
                    ),
                  )),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 46),
              width: 263,
              height: 42,
              decoration: BoxDecoration(
                  color: biru, borderRadius: BorderRadius.circular(30)),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DokterLoginPage()));
                  },
                  child: Text(
                    'DOKTER',
                    style: teksHitam.copyWith(
                      fontSize: 16,
                      fontWeight: bold,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
