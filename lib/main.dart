import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: const Color(0xFF0055FF),
        textTheme: GoogleFonts.interTextTheme(),
      ),
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Container(
              width: 375,
              height: 812,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.2),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Image.asset(
                            'media/product_main.png',
                            width: double.infinity,
                            height: 450,
                            fit: BoxFit.fitWidth,
                            alignment: Alignment.topCenter,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 23.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                _buildPageIndicator(true),
                                const SizedBox(width: 8),
                                _buildPageIndicator(false),
                                const SizedBox(width: 8),
                                _buildPageIndicator(false),
                                const SizedBox(width: 8),
                                _buildPageIndicator(false),
                                const SizedBox(width: 8),
                                _buildPageIndicator(false),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\$17,00',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.red.withValues(alpha: 0.1),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Transform.flip(
                                    flipX: true,
                                    child: Icon(
                                      Icons.reply,
                                      size: 20,
                                      color:
                                          Colors.black.withValues(alpha: 0.3),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Lorem ipsum dolor sit amet, consectetur '
                              'adipiscing elit. Etiam arcu mauris, scelerisque '
                              'eu mauris id, pretium pulvinar sapien.',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPageIndicator(bool isActive) {
    return Container(
      width: isActive ? 40 : 12,
      height: 12,
      decoration: BoxDecoration(
        color: const Color(0xFF0055FF).withValues(alpha: isActive ? 1.0 : 0.3),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
