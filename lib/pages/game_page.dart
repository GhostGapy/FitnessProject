import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  const GamePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Show confirmation dialog
        bool confirmExit = await showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Are you sure?'),
              content: const Text('Do you really want to stop playing?'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(false); // No, do not exit
                  },
                  child: const Text('No'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(true); // Yes, exit
                  },
                  child: const Text('Yes'),
                ),
              ],
            );
          },
        );

        return confirmExit;
      },
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 31, 31, 31),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 34, 27, 27),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Background Card
              Positioned(
                top: 50,
                left: 50,
                child: Card(
                  color: const Color.fromARGB(255, 17, 17, 17),
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      child: Card(
                        color: const Color.fromARGB(255, 255, 0, 0),
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          child: Center(
                            child: Card(
                              color: const Color.fromARGB(255, 17, 17, 17),
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Container(
                                width: 300,
                                height: 540,
                                padding: const EdgeInsets.all(16.0),
                                child: const Center(
                                  child: Text(
                                    'Overlapping Card',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.white,
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // Overlapping Card
              Positioned(
                top: 45,
                left: 40,
                child: Card(
                  color: const Color.fromARGB(255, 17, 17, 17),
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                    width: 326,
                    height: 562,
                    padding: const EdgeInsets.all(3.0),
                    child: Center(
                      child: Card(
                        color: const Color.fromARGB(255, 255, 0, 0),
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          child: Center(
                            child: Card(
                              color: const Color.fromARGB(255, 17, 17, 17),
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Container(
                                width: 300,
                                height: 540,
                                padding: const EdgeInsets.all(16.0),
                                child: const Center(
                                  child: Text(
                                    'Overlapping Card',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.white,
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // First Square Button
              Positioned(
                bottom: 27,
                left: 100,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 73, 73, 73),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    padding: const EdgeInsets.all(20.0),
                  ),
                  child: const Column(
                    children: [
                      Icon(Icons.swipe_right),
                      SizedBox(height: 10),
                      Text('Previous'),
                    ],
                  ),
                ),
              ),
              // Second Square Button
              Positioned(
                bottom: 27,
                right: 90,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 73, 73, 73),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    padding: const EdgeInsets.all(20.0),
                  ),
                  child: const Column(
                    children: [
                      Icon(Icons.swipe_left),
                      SizedBox(height: 10),
                      Text('   Next   '),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
