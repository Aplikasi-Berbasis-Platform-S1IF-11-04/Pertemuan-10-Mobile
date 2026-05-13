import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/feature_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              gradient: const LinearGradient(
                colors: [Color(0xff6A11CB), Color(0xff2575FC)],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Selamat Datang 👋',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'D\'sharlendita Febianda Aurelia | 2311102069',
                    style: GoogleFonts.poppins(
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 25),

          Row(
            children: [
              Expanded(
                child: FeatureCard(
                  icon: Icons.smart_button,
                  title: 'Button',
                  subtitle: 'Implementasi project button',
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: FeatureCard(
                  icon: Icons.view_compact,
                  title: 'Container',
                  subtitle: 'Belajar layout container',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}