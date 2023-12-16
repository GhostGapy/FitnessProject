import 'package:flutter/material.dart';
import 'package:modernlogintute/pages/game_page.dart';
import 'package:modernlogintute/pages/settings_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 31, 31),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 34, 27, 27),
        actions: [
          IconButton(
            onPressed: () {
              // Navigate to SettingsPage when the settings icon is pressed
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            },
            icon: const Icon(Icons.settings_sharp),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'DRINK DECK',
              style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
                height: 46.0), // Add some spacing between title and image
            Image.asset(
              'lib/images/backCard_DD_red.png', // Replace with your image file name and extension
              height: 400.0, // Set image height
              fit: BoxFit
                  .cover, // Adjust how the image is fitted within its bounds
            ),
            const SizedBox(height: 46.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to SettingsPage when the settings icon is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GamePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 6, 175, 6),
                  padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: 40, vertical: 10)),
              child: const Text(
                "Play",
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }
}
