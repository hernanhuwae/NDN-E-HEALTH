import 'package:flutter/material.dart';
import '../themeNDN/tema.dart';

class NamaDokterCheckUp extends StatelessWidget {
  final String namaDoctor;
  const NamaDokterCheckUp({
    super.key,
    required this.namaDoctor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 4),
          width: 35,
          height: 35,
          decoration: BoxDecoration(
              border: Border.all(width: 2, color: basic),
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage('galeri/dokter.png'))),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              namaDoctor,
              style: TextStyle(
                  fontSize: 15, fontWeight: bold, color: Colors.black),
            ),
            Text(
              'Dokter Kulit',
              style: TextStyle(
                  fontSize: 11, fontWeight: bold, color: Color(0xff425A80)),
            ),
          ],
        ),
        SizedBox(
          width: 5,
        ),
        Image.asset(
          'galeri/pesan.png',
          width: 25,
          height: 25,
        ),
      ],
    );
  }
}
