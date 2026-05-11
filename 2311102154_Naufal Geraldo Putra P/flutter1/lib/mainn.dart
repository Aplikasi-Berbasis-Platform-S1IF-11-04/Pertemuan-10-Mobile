import 'package:flutter/material.dart';
<<<<<<< HEAD
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
        body: const PenghitungMahasiswa(),
      ),
    );
  }
}

class PenghitungMahasiswa extends StatefulWidget {
  const PenghitungMahasiswa({super.key});

  @override
  State<PenghitungMahasiswa> createState() =>
      _PenghitungMahasiswaState();
}

class _PenghitungMahasiswaState
    extends State<PenghitungMahasiswa> {

  int jumlahHadir = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Jumlah yang Hadir:',
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
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
=======

main() => runApp(flutter1());

class flutter1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Ini head"),),
        body: Text("Ini body"),
>>>>>>> 89dee0f0a862d3d2d0543860b4ecec65a539ff64
      ),
    );
  }
}