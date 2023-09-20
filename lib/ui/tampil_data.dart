import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String Nama;
  final String NIM;
  final int TahunLahir;

  const TampilData(
      {Key? key,
      required this.Nama,
      required this.NIM,
      required this.TahunLahir})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perkenalan"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Center(
            child: ListView(
          children: [
            Text("Hai, nama saya $Nama."),
            Text("NIM saya adalah $NIM."),
            Text(
              "Saya berumur ${(DateTime.now().year - TahunLahir)} tahun.",
            ),
          ],
        )),
      ),
    );
  }
}
