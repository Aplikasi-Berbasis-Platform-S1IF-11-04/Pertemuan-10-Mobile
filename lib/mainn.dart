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
          title: const Text('Poster & Papan Skor'),
          backgroundColor: Colors.blue,
        ),
        body: const PenghitungMahsiswa(),
      ),
    );
  }
}

class PenghitungMahsiswa extends StatefulWidget {
  const PenghitungMahsiswa({super.key});

  @override
  State<PenghitungMahsiswa> createState() =>
      _PenghitungMahsiswaState();
}

class _PenghitungMahsiswaState
    extends State<PenghitungMahsiswa> {
  int jumlahHadir = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Jumlah Praktikum ABP yang Hadir :',
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          Text(
            '$jumlahHadir',
            style: const TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),
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