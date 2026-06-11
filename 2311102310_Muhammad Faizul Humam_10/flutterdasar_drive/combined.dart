import 'package:flutter/material.dart';

void main() {
  runApp(const AplikasiGabungan());
}

class AplikasiGabungan extends StatelessWidget {
  const AplikasiGabungan({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Eksplorasi Widget',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HalamanNavigasiUtama(),
    );
  }
}

class HalamanNavigasiUtama extends StatefulWidget {
  const HalamanNavigasiUtama({super.key});

  @override
  State<HalamanNavigasiUtama> createState() => _HalamanNavigasiUtamaState();
}

class _HalamanNavigasiUtamaState extends State<HalamanNavigasiUtama> {
  int _selectedIndex = 0;

  // Nilai counter untuk halaman 4 (Aplikasi Counter bawaan)
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Memasukkan 5 kode terpisahmu ke dalam daftar halaman (ruangan)
    final List<Widget> _halaman = [
      // =========================================================
      // HALAMAN 1: Gabungan Widget OutlinedButton & Text Biasa
      // =========================================================
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "ini data saya ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                print("button di tekan ");
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.amberAccent,
              ),
              child: const Text("login"),
            ),
          ],
        ),
      ),

      // =========================================================
      // HALAMAN 2: Eksplorasi Belajar Container (Kustom Border)
      // =========================================================
      Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          decoration: const BoxDecoration(
              color: Colors.red,
              border: Border(
                bottom: BorderSide(width: 3, color: Colors.black12),
                left: BorderSide(width: 3, color: Colors.black12),
                right: BorderSide(width: 3, color: Colors.deepPurpleAccent),
                top: BorderSide(width: 3, color: Colors.teal),
              )),
          width: double.infinity,
          height: 100,
          child: const Center(
            child: Text(
              "belajar container",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),

      // =========================================================
      // HALAMAN 3: Form Login Standar (Column, TextField, & Button)
      // =========================================================
      SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              "FORM LOGIN",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "silahkan masukan username"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "silahkan masukan password")),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("data"),
            ),
          ],
        ),
      ),

      // =========================================================
      // HALAMAN 4: Aplikasi State Counter (Bawaan Flutter)
      // =========================================================
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),

      // =========================================================
      // HALAMAN 5: Kustom TextField (Username Bergaya Hijau/Biru)
      // =========================================================
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: TextField(
            maxLength: 20,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: const BorderSide(color: Colors.green)),
                filled: true,
                fillColor: Colors.blue.shade100, // Diubah sedikit soft agar teks terlihat
                labelText: "username",
                hintText: "silahkan masukan user name ",
                helperText: "masukan hanya 20 karakter",
                prefixIcon: const Icon(Icons.supervisor_account)),
          ),
        ),
      ),
    ];

    // Mengubah Judul AppBar secara dinamis sesuai halaman yang aktif
    final List<String> _judulAppBar = [
      "Tombol & Teks",
      "Belajar Container",
      "Form Login",
      "Counter Page",
      "Kustom TextField"
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(_judulAppBar[_selectedIndex]),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: _halaman[_selectedIndex],
      
      // Floating Action Button hanya muncul di halaman Counter (Indeks ke-3)
      floatingActionButton: _selectedIndex == 3
          ? FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            )
          : null,

      // Navigasi Bar Bawah untuk berpindah halaman
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Agar muat banyak tombol navigasi
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.touch_app), label: 'Tombol'),
          BottomNavigationBarItem(icon: Icon(Icons.crop_square), label: 'Kotak'),
          BottomNavigationBarItem(icon: Icon(Icons.login), label: 'Login'),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: 'Counter'),
          BottomNavigationBarItem(icon: Icon(Icons.edit), label: 'Input'),
        ],
      ),
    );
  }
}