import 'package:flutter/material.dart';
import '../themeNDN/tema.dart';

class CheckUpPesanDokter extends StatelessWidget {
  final String pesanDokter;
  const CheckUpPesanDokter({super.key, required this.pesanDokter});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 18),
      padding: EdgeInsets.all(13),
      width: 275,
      height: 100,
      child: Text(
        pesanDokter,
        style:
            TextStyle(fontSize: 14, fontWeight: semibold, color: Colors.black),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18), color: Color(0xffD8E6F3)),
    );
  }
}
