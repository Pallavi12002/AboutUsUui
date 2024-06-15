import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7775F8), // Background color of the entire screen
      appBar: AppBar(
        title: const Text(
          'About Us',
          style: TextStyle(fontFamily: 'Roboto'),
        ),
        backgroundColor: const Color(0xFF7775F8),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Promotional Banner
                Container(
                  padding: EdgeInsets.all(16.0),
                  color: Colors.red,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Image.asset(
                          'assets/promo_banner.jpg', // Replace with your image asset
                          fit: BoxFit.cover,
                          height: 150, // Adjust the height to make the banner larger
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      const Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'BIG SALE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            Text(
                              '70% OFF\nLAST MINUTE OFFER',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            Text(
                              'Discounts up to 70% off',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24.0),
                // Vision Section
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            '// ',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontFamily: 'Roboto',
                            ),
                          ),
                          Text(
                            'OUR VISION',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'MAKE SPORTS BETTER',
                        style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'Roboto',
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        '“We are proud to continually serve our growing community of avid sports fans with the latest innovative offerings and contribute to the overall expansion of the Indian sports ecosystem” - Harsh Jain, CEO',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                          fontFamily: 'Roboto',
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
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: AboutUsPage(),
  ));
}
