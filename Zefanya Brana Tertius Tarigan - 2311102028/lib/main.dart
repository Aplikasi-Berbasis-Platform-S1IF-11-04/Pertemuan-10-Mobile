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
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
      ),
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
  int halamanAktif = 0;
  int jumlahMahasiswa = 32;

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController namaController =
      TextEditingController(text: 'Zefanya Tarigan');

  String get judulAppBar {
    switch (halamanAktif) {
      case 0:
        return 'ini aplikasi saya';
      case 1:
        return 'Belajar Container';
      case 2:
        return 'Biodata Mahasiswa';
      case 3:
        return 'Poster dan papan skor';
      case 4:
        return 'login';
      case 5:
        return 'Input Data';
      default:
        return 'ini aplikasi saya';
    }
  }

  void pindahHalaman(int index) {
    setState(() {
      halamanAktif = index;
    });
    Navigator.pop(context);
  }

  void tambahMahasiswa() {
    setState(() {
      jumlahMahasiswa++;
    });
  }

  void kurangiMahasiswa() {
    setState(() {
      if (jumlahMahasiswa > 0) {
        jumlahMahasiswa--;
      }
    });
  }

  void tampilkanDataLogin() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Username: ${usernameController.text}, Password: ${passwordController.text}',
        ),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  void tampilkanPesan(String pesan) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(pesan),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    namaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF7FF),

      appBar: AppBar(
        title: Text(
          judulAppBar,
          style: const TextStyle(
            fontSize: 22,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.blue,
        elevation: 0,
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
                  Icon(
                    Icons.account_circle,
                    color: Colors.white,
                    size: 60,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Zefanya Tarigan',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '2311102028',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),

            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () => pindahHalaman(0),
            ),

            ListTile(
              leading: const Icon(Icons.crop_square),
              title: const Text('Belajar Container'),
              onTap: () => pindahHalaman(1),
            ),

            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Biodata'),
              onTap: () => pindahHalaman(2),
            ),

            ListTile(
              leading: const Icon(Icons.scoreboard),
              title: const Text('Poster dan Papan Skor'),
              onTap: () => pindahHalaman(3),
            ),

            ListTile(
              leading: const Icon(Icons.login),
              title: const Text('Login'),
              onTap: () => pindahHalaman(4),
            ),

            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text('Input Data'),
              onTap: () => pindahHalaman(5),
            ),
          ],
        ),
      ),

      body: halamanBody(),
    );
  }

  Widget halamanBody() {
    switch (halamanAktif) {
      case 0:
        return halamanHome();
      case 1:
        return halamanContainer();
      case 2:
        return halamanBiodata();
      case 3:
        return halamanPapanSkor();
      case 4:
        return halamanLogin();
      case 5:
        return halamanInputData();
      default:
        return halamanHome();
    }
  }

  Widget halamanHome() {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              'ini aplikasi saya',
              style: TextStyle(
                fontSize: 24,
                color: Colors.black87,
              ),
            ),
          ),

          const Spacer(),

          ElevatedButton(
            onPressed: () {
              setState(() {
                halamanAktif = 4;
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
              foregroundColor: Colors.deepPurple,
              padding: const EdgeInsets.symmetric(
                horizontal: 36,
                vertical: 12,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: const Text(
              'login',
              style: TextStyle(fontSize: 16),
            ),
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget halamanContainer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(24),
          child: Text(
            'ini aplikasi saya',
            style: TextStyle(
              fontSize: 24,
              color: Colors.black87,
            ),
          ),
        ),

        Container(
          width: double.infinity,
          height: 120,
          color: Colors.red,
          alignment: Alignment.center,
          child: const Text(
            'belajar container',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  Widget halamanBiodata() {
    return const Padding(
      padding: EdgeInsets.only(top: 24, left: 0),
      child: Text(
        '2311102028 - Zefanya Tarigan',
        style: TextStyle(
          fontSize: 18,
          color: Colors.black87,
        ),
      ),
    );
  }

  Widget halamanPapanSkor() {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Jumlah Praktikan ABP yang Hadir:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 20),

              Text(
                '$jumlahMahasiswa',
                style: const TextStyle(
                  fontSize: 72,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 25),

              ElevatedButton(
                onPressed: tambahMahasiswa,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.deepPurple,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 1,
                ),
                child: const Text(
                  'Tambah Mahasiswa',
                  style: TextStyle(fontSize: 16),
                ),
              ),

              const SizedBox(height: 12),

              OutlinedButton(
                onPressed: kurangiMahasiswa,
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.deepPurple,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'Kurangi Mahasiswa',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget halamanLogin() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'login',
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.black87,
                ),
              ),
            ),

            const SizedBox(height: 24),

            const Text(
              'FROM LOGIN',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 28),

            TextField(
              controller: usernameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'silahkan masukan username',
              ),
            ),

            const SizedBox(height: 45),

            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'silahkan masukan password',
              ),
            ),

            const SizedBox(height: 28),

            ElevatedButton(
              onPressed: tampilkanDataLogin,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.deepPurple,
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'data',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget halamanInputData() {
    return Padding(
      padding: const EdgeInsets.only(top: 24, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'ini aplikasi saya',
            style: TextStyle(
              fontSize: 24,
              color: Colors.black87,
            ),
          ),

          const SizedBox(height: 20),

          TextField(
            controller: namaController,
            maxLength: 20,
            decoration: InputDecoration(
              labelText: 'username',
              helperText: 'masukan hanya 20 karakter',
              prefixIcon: const Icon(Icons.people),
              filled: true,
              fillColor: Colors.blue,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
              ),
            ),
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),

          const SizedBox(height: 20),

          ElevatedButton.icon(
            onPressed: () {
              tampilkanPesan('Nama yang diinput: ${namaController.text}');
            },
            icon: const Icon(Icons.save),
            label: const Text('Simpan Data'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}