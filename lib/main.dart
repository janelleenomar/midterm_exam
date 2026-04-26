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
                                    fontSize: 24,
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
                            const SizedBox(height: 15),
                            Row(
                              children: [
                                Text(
                                  'Variations',
                                  style: GoogleFonts.montserrat( 
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                _buildChip('Pink', false),
                                const SizedBox(width: 8),
                                _buildChip('M', false),
                                const Spacer(),
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF0055FF),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(Icons.arrow_forward,
                                      color: Colors.white, size: 20),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              height: 80,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  _buildThumbnail('media/variation_1.png'),
                                  const SizedBox(width: 5),
                                  _buildThumbnail('media/variation_2.png'),
                                  const SizedBox(width: 5),
                                  _buildThumbnail('media/variation_3.png'),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              'Specifications',
                              style: GoogleFonts.montserrat(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Material',
                              style: GoogleFonts.montserrat(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                _buildSpecificationChip('Cotton 95%'),
                                const SizedBox(width: 10),
                                _buildSpecificationChip('Nylon 5%'),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Origin',
                              style: GoogleFonts.montserrat(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 10),
                            _buildSpecificationChip(
                              'EU',
                              color: const Color(0xFFE8EFFF),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Size guide',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF0055FF),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
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

  Widget _buildSpecificationChip(String label, {Color? color}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        color: color ?? const Color(0xFFFFEBEE),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: GoogleFonts.montserrat(
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _buildChip(String label, bool isSelected) {
    return Container(
      width: 60, 
      padding: const EdgeInsets.symmetric(vertical: 5), 
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFF0055FF) : Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      alignment: Alignment.center, 
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 13,
        ),
      ),
    );
  }

  Widget _buildThumbnail(String assetPath) {
    return Container(
      width: 80,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(assetPath),
          fit: BoxFit.cover,
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
