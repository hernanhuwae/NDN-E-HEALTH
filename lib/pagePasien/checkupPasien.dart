import 'package:flutter/material.dart';
import 'package:ndn_skin_cancer_app_capstone/share/checkUpKomentarDokter.dart';
import 'package:ndn_skin_cancer_app_capstone/share/checkUpNamaDokter.dart';
import '../pagePasien/monitoringPasien.dart';
import '../themeNDN/tema.dart';

class PasienCheckUp extends StatelessWidget {
  const PasienCheckUp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget bodyCheckUp() {
      return Container(
        color: Color(0xffD8E6F3),
        height: 460,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 80),
                  width: 110,
                  height: 120,
                  decoration: BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage('galeri/girl.png')),
                      border: Border.all(width: 2, color: basic),
                      shape: BoxShape.circle),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'STEPHANNIE',
                  style: teksHitam.copyWith(fontSize: 20, fontWeight: bold),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Pasien',
                  style: TextStyle(
                      color: Color(0xff425A80), fontSize: 14, fontWeight: bold),
                )
              ],
            ),
            SizedBox(
              height: 38,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10, bottom: 15, left: 18),
                  width: 25,
                  height: 30,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('galeri/location.png'))),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  padding: EdgeInsets.only(bottom: 9),
                  child: Text(
                    'Bandung, Dayeuhkolot',
                    style: teksHitam.copyWith(fontSize: 17, fontWeight: bold),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10, bottom: 15, left: 18),
                  width: 25,
                  height: 30,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('galeri/phone.png'))),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  padding: EdgeInsets.only(bottom: 9),
                  child: Text(
                    '0823-7698-9010',
                    style: teksHitam.copyWith(fontSize: 17, fontWeight: bold),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              color: basic,
              width: double.infinity,
              height: 47,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 7),
                    child: Text(
                      'MY CHECK-UP',
                      style: teksPutih.copyWith(fontSize: 15, fontWeight: bold),
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 25,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('galeri/cek.png'))),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget myCheckUp() {
      return ListView(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 440, left: 54),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NamaDokterCheckUp(namaDoctor: 'Hernan Huwae'),
                    CheckUpPesanDokter(
                      pesanDokter:
                          'Saat ini pasien sedang mengalami kanker kulit tipe Melanoma dianjurkan untuk melakukan konsultasi dan perawatan lanjut',
                    ),
                    NamaDokterCheckUp(namaDoctor: 'Hernan Huwae'),
                    CheckUpPesanDokter(
                      pesanDokter:
                          'Saat ini pasien sedang mengalami kanker kulit tipe Melanoma dianjurkan untuk melakukan konsultasi dan perawatan lanjut',
                    ),
                    NamaDokterCheckUp(namaDoctor: 'Hernan Huwae'),
                    CheckUpPesanDokter(
                      pesanDokter:
                          'Saat ini pasien sedang mengalami kanker kulit tipe Melanoma dianjurkan untuk melakukan konsultasi dan perawatan lanjut',
                    ),
                    NamaDokterCheckUp(namaDoctor: 'Hernan Huwae'),
                    CheckUpPesanDokter(
                      pesanDokter:
                          'Saat ini pasien sedang mengalami kanker kulit tipe Melanoma dianjurkan untuk melakukan konsultasi dan perawatan lanjut',
                    ),
                    NamaDokterCheckUp(namaDoctor: 'Hernan Huwae'),
                    CheckUpPesanDokter(
                      pesanDokter:
                          'Saat ini pasien sedang mengalami kanker kulit tipe Melanoma dianjurkan untuk melakukan konsultasi dan perawatan lanjut',
                    ),
                    NamaDokterCheckUp(namaDoctor: 'Hernan Huwae'),
                    CheckUpPesanDokter(
                      pesanDokter:
                          'Saat ini pasien sedang mengalami kanker kulit tipe Melanoma dianjurkan untuk melakukan konsultasi dan perawatan lanjut',
                    ),
                  ],
                ),
              ),

              //TODO: PESAN DOKTER
            ],
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffD8E6F3),
      floatingActionButton: FloatingActionButton(
        backgroundColor: basic,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: Stack(
        children: [
          myCheckUp(),
          bodyCheckUp(),
        ],
      ),
    );
  }
}
