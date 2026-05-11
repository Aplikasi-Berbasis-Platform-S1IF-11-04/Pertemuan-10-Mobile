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
        backgroundColor: Colors.blue.shade50,

        appBar: AppBar(
          title: const Text('Poster & Papan Skor'),
          backgroundColor: Colors.blue,
          centerTitle: true,
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
      child: Card(
        elevation: 8,
        margin: const EdgeInsets.all(20),

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

        child: Padding(
          padding: const EdgeInsets.all(25),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.school, size: 70, color: Colors.blue),

              const SizedBox(height: 15),

              Text(
                'Jumlah Praktikan Hadir',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              Text(
                '$jumlahHadir',
                style: GoogleFonts.poppins(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),

              const SizedBox(height: 20),

              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    jumlahHadir++;
                  });
                },

                icon: const Icon(Icons.add),

                label: const Text('Tambah Mahasiswa'),

                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                ),
              ),

              const SizedBox(height: 25),

              const Divider(),

              const SizedBox(height: 10),

              Text(
                'Arnanda Setya Nosa Putra',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),

              Text('NIM: 2311102180', style: GoogleFonts.poppins(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
