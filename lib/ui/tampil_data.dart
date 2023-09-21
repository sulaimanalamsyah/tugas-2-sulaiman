import 'package:flutter/material.dart';

class DetailData extends StatelessWidget {
  final String namaMahasiswa;
  final String nimMahasiswa;
  final int tahunLhr;
  const DetailData(
      {Key? key,
      required this.namaMahasiswa,
      required this.nimMahasiswa,
      required this.tahunLhr})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Perkenalan"),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                  "Nama saya $namaMahasiswa, NIM $nimMahasiswa, dan umur saya adalah ${DateTime.now().year - tahunLhr} tahun")
            ],
          ),
        ));
  }
}