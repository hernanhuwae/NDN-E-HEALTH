import 'package:flutter/material.dart';
import '../themeNDN/tema.dart';

class allTombolNdn extends StatelessWidget {
  final String teksForm;
  final bool hidetext;
  const allTombolNdn({
    super.key,
    required this.hidetext,
    required this.teksForm,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25, bottom: 20),
      width: double.infinity,
      height: 55,
      decoration:
          BoxDecoration(color: putih, borderRadius: BorderRadius.circular(8)),
      child: TextFormField(
        obscureText: hidetext,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            hintText: teksForm,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.redAccent))),
      ),
    );
  }
}
