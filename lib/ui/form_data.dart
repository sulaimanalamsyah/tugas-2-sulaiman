import 'package:flutter/material.dart';
import 'package:tugas_2_sulaiman/ui/tampil_data.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);
  @override
  _FormDataState createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  final _NamaController = TextEditingController();
  final _NIMController = TextEditingController();
  final _TahunLahirController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Data'),
      ),
      body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              _textboxNama(),
              _textboxNIM(),
              _textboxTahunLahir(),
              _tombolSimpan()
            ],
          )),
    );
  }

  _textboxNama() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama"),
      controller: _NamaController,
    );
  }

  _textboxNIM() {
    return TextField(
      decoration: const InputDecoration(labelText: "NIM"),
      controller: _NIMController,
    );
  }

  _textboxTahunLahir() {
    return TextField(
      decoration: const InputDecoration(labelText: "Tahun Lahir"),
      controller: _TahunLahirController,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          String namaMahasiswa = _NamaController.text;
          String nimMahasiswa = _NIMController.text;
          int tahunLhr = int.parse(_TahunLahirController.text);
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DetailData(
                  namaMahasiswa: namaMahasiswa, nimMahasiswa: nimMahasiswa, tahunLhr: tahunLhr)));
        },
        child: const Text('Simpan'));
  }
}