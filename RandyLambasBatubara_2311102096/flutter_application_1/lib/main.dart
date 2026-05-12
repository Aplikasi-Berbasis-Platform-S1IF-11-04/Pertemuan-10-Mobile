import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pertemuan 10 Mobile',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: false),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String judulHalaman = 'Ini Halaman Home';

  void ubahHalaman(String halaman) {
    setState(() {
      judulHalaman = halaman;
    });

    Navigator.pop(context);
  }

  void tampilkanPesan() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Tombol berhasil diklik'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  void ubahDariButton() {
    setState(() {
      judulHalaman = 'Halaman Berubah Dari Button';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF7FF),

      appBar: AppBar(
        title: const Text(
          'Menu dan Button',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.account_circle, color: Colors.white, size: 60),
                  SizedBox(height: 8),
                  Text(
                    'Randy Lambas Batubara',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '2311102096',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),

            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                ubahHalaman('Ini Halaman Home');
              },
            ),

            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profil'),
              onTap: () {
                ubahHalaman('Ini Halaman Profil');
              },
            ),

            ListTile(
              leading: const Icon(Icons.school),
              title: const Text('Kuliah'),
              onTap: () {
                ubahHalaman('Ini Halaman Kuliah');
              },
            ),

            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('Tentang'),
              onTap: () {
                ubahHalaman('Ini Halaman Tentang Aplikasi');
              },
            ),
          ],
        ),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                judulHalaman,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 35),

              ElevatedButton.icon(
                onPressed: ubahDariButton,
                icon: const Icon(Icons.touch_app),
                label: const Text('Klik Button'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 14,
                  ),
                  textStyle: const TextStyle(fontSize: 16),
                ),
              ),

              const SizedBox(height: 15),

              OutlinedButton.icon(
                onPressed: tampilkanPesan,
                icon: const Icon(Icons.message),
                label: const Text('Tampilkan Pesan'),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.blue,
                  side: const BorderSide(color: Colors.blue),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 26,
                    vertical: 14,
                  ),
                  textStyle: const TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}