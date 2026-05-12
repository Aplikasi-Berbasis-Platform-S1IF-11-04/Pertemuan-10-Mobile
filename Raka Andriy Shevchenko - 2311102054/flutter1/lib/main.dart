import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HalamanUtama(),
    );
  }
}

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({super.key});

  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  int _selectedIndex = 0;

  String selectedValue = 'Flutter';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gabungan Menu & Tombol'),
        backgroundColor: Colors.blueAccent,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 40,
              backgroundColor: Colors.blueAccent,
              child: Icon(Icons.person, size: 40, color: Colors.white),
            ),

            const SizedBox(height: 15),

            const Text(
              'Raka Andriy Shevchenko',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Text(
              '2311102054',
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 20),

            Text(
              'Halaman Index: $_selectedIndex',
              style: const TextStyle(fontSize: 22),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Button ditekan!'),
                  ),
                );
              },
              child: const Text('Klik Saya'),
            ),

            const SizedBox(height: 20),

            DropdownButton<String>(
              value: selectedValue,
              items: const [
                DropdownMenuItem(
                  value: 'Flutter',
                  child: Text('Flutter'),
                ),
                DropdownMenuItem(
                  value: 'Laravel',
                  child: Text('Laravel'),
                ),
                DropdownMenuItem(
                  value: 'UI Design',
                  child: Text('UI Design'),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  selectedValue = value!;
                });
              },
            ),

            const SizedBox(height: 10),

            Text(
              'Pilihan: $selectedValue',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent,

        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.smart_button),
            label: 'Button',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}