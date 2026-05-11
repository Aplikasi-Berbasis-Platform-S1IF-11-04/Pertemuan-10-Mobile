import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(home: Scaffold(body: PenghitungMahasiswa())));
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
            'Jumlah Praktikan ABP yang Hadir:',
            style: GoogleFonts.poppins(fontSize: 18),
          ),
          Text(
            '$jumlahHadir',
            style: GoogleFonts.poppins(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                jumlahHadir++; // Ini buat nambah angka pas tombol ditekan
              });
            },
            child: const Text("Tambah Mahasiswa"),
          ),
        ],
      ),
    );
  }
}
