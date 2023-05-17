import 'package:flutter/material.dart';
import '../themeNDN/tema.dart';

class customTombolMasuk extends StatelessWidget {
  final String textMasuk;
  final Function() navigasi;
  const customTombolMasuk(
      {super.key, required this.textMasuk, required this.navigasi});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      width: double.infinity,
      height: 55,
      decoration:
          BoxDecoration(color: biru, borderRadius: BorderRadius.circular(8)),
      child: TextButton(
          onPressed: navigasi,
          child: Text(
            textMasuk,
            style: teksHitam.copyWith(fontSize: 22, fontWeight: bold),
          )),
    );
  }
}
