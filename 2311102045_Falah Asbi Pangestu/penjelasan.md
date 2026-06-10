Flutter Navigation & Input Demo
Aplikasi ini mendemonstrasikan integrasi antara navigasi dasar menggunakan BottomNavigationBar dan penggunaan berbagai jenis tombol serta input (dropdown) dalam Flutter.

Fitur Utama
Navigasi Dinamis: Menggunakan BottomNavigationBar untuk berpindah antar halaman (Home, Buttons, dan Profil) tanpa berpindah screen baru, melainkan mengganti konten body.

Interaksi Pengguna:

ElevatedButton: Tombol dengan latar belakang (gaya standar aksi utama).

TextButton: Tombol tanpa latar belakang (gaya minimalis).

DropdownButton: Menu pilihan interaktif yang memperbarui state tampilan.

State Management: Menggunakan setState() untuk mengelola perubahan indeks pada navigasi bawah dan pemilihan nilai pada dropdown.

Custom Fonts: Integrasi library google_fonts untuk memberikan tipografi yang lebih menarik pada teks.

Analisis Struktur Kode
StatefulWidget (HalamanUtama): Karena aplikasi perlu mengingat halaman mana yang aktif (_selectedIndex) dan nilai apa yang dipilih di dropdown (selectedValue), kita menggunakan StatefulWidget agar tampilan bisa diperbarui secara real-time.

List ruangan: Ini adalah daftar widget yang berfungsi sebagai penampung halaman. Scaffold akan menampilkan konten berdasarkan indeks yang dipilih dari daftar ini:

Dart
body: ruangan.elementAt(_selectedIndex)
BottomNavigationBar: Berfungsi sebagai menu navigasi utama yang diletakkan di bagian bawah Scaffold. Fungsi onTap memicu setState untuk memperbarui indeks, yang secara otomatis memicu Flutter untuk membangun ulang bagian body dengan halaman yang baru.

Catatan Tambahan
Dependencies: Pastikan google_fonts telah terpasang di pubspec.yaml agar aplikasi dapat memuat font yang digunakan.

Performance: Penggunaan Column dan Center di dalam body memastikan setiap komponen tombol tersusun rapi secara vertikal di tengah layar.