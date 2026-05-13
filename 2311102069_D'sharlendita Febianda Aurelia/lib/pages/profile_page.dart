import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),

      child: Column(
        children: [
          const SizedBox(height: 20),

          // PROFILE ICON
          CircleAvatar(
            radius: 60,
            backgroundColor: Colors.blue.shade100,
            child: const Icon(
              Icons.person,
              size: 70,
              color: Colors.blueAccent,
            ),
          ),

          const SizedBox(height: 24),

          // NAME
          Text(
            "D'sharlendita Febianda Aurelia",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),

          const SizedBox(height: 10),

          // SUBTITLE
          Text(
            '2311102069',
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: Colors.grey[700],
            ),
          ),

          const SizedBox(height: 40),

          // STATS
          Row(
            children: [
              buildStatCard('6', 'Semester'),
              const SizedBox(width: 12),

              buildStatCard('ABP', 'Praktikum'),
              const SizedBox(width: 12),

              buildStatCard('10', 'Project'),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildStatCard(String number, String title) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),

          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.08),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),

        child: Column(
          children: [
            Text(
              number,
              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}