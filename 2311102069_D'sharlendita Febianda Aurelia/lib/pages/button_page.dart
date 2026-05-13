import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/custom_dropdown.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({super.key});

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  bool isLiked = false;
  String selectedValue = 'Flutter';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),

          // TITLE
          Text(
            'Interactive Components',
            style: GoogleFonts.poppins(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            'Pilih teknologi favoritmu',
            style: GoogleFonts.poppins(
              fontSize: 15,
              color: Colors.grey[700],
            ),
          ),
          const SizedBox(height: 30),

          TextField(
            decoration: InputDecoration(
              hintText: 'Masukkan nama',

              prefixIcon: const Icon(Icons.person),

              filled: true,
              fillColor: Colors.white,

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none,
              ),
            ),
          ),

          const SizedBox(height: 40),

          // DROPDOWN CARD
          Container(
            padding: const EdgeInsets.all(20),

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),

              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.08),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
              ],
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Framework',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 15),

                CustomDropdown(
                  value: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value!;
                    });
                  },
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          // FAVORITE BUTTON
          Center(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),

              child: OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 28,
                    vertical: 14,
                  ),

                  side: BorderSide(
                    color: isLiked
                        ? Colors.redAccent
                        : Colors.grey.shade400,
                  ),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),

                onPressed: () {
                  setState(() {
                    isLiked = !isLiked;
                  });
                },

                icon: Icon(
                  isLiked
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: Colors.redAccent,
                ),

                label: Text(
                  isLiked ? 'Disukai' : 'Suka',
                  style: GoogleFonts.poppins(
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 40),

          // RESULT CARD
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),

            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color(0xff6A11CB),
                  Color(0xff2575FC),
                ],
              ),

              borderRadius: BorderRadius.circular(24),
            ),

            child: Column(
              children: [
                const Icon(
                  Icons.code,
                  color: Colors.white,
                  size: 50,
                ),

                const SizedBox(height: 15),

                Text(
                  selectedValue,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  isLiked
                      ? 'Kamu menyukai framework ini ❤️'
                      : 'Tekan tombol suka jika favorit',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 40),

          // SUBMIT BUTTON
          SizedBox(
            width: double.infinity,
            height: 58,

            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,

                elevation: 0,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),

              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    behavior: SnackBarBehavior.floating,
                    backgroundColor: Colors.black87,

                    content: Text(
                      '$selectedValue berhasil dipilih',
                      style: GoogleFonts.poppins(),
                    ),
                  ),
                );
              },

              icon: const Icon(Icons.send),

              label: Text(
                'Submit',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}