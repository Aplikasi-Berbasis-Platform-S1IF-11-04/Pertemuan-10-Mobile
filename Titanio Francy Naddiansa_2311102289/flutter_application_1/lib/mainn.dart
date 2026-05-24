import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const AplikasiPraktikum());
}

class AplikasiPraktikum extends StatelessWidget {
  const AplikasiPraktikum({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Poster dan papan skor'),
          backgroundColor: Colors.blue,
        ),
        body: const PenghitungMahasiswa(),
      ),
    );
  }
}

class PenghitungMahasiswa extends StatefulWidget {
  const PenghitungMahasiswa({super.key});

  @override
  State<PenghitungMahasiswa> createState() => _PenghitungMahasiswaState();
}

class _PenghitungMahasiswaState extends State<PenghitungMahasiswa> {
  int jumlahHadir = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
<<<<<<<< HEAD:Titanio Francy Naddiansa_2311102289/flutter_application_1/lib/mainn.dart
            'Jumlah Praktikum ABP yang Hadir:',
========
            'Jumlah Praktikan ABP yang Hadir:',
>>>>>>>> a137ca0398fd7194a52562e0c0313522d76b3045:2311102150-Mohammad Nizal Maulana/sourcecode/flutter1/lib/mainn.dart
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '$jumlahHadir',
            style: const TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                jumlahHadir++;
              });
            },
            child: const Text('Tambah Mahasiswa'),
          ),
        ],
      ),
    );
  }
}