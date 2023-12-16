import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key});

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  late String currentCardValue;
  late String currentDocumentId; // Added to store the current document ID

  @override
  void initState() {
    super.initState();
    // Initialize the card value and document ID
    currentCardValue = 'Loading...';
    currentDocumentId =
        ''; // Set to an initial value, or choose a default document ID
    fetchCardValue();
  }

  Future<void> fetchCardValue() async {
    try {
      // Replace "YourCollection" with your actual Firestore collection name
      var querySnapshot =
          await FirebaseFirestore.instance.collection('Cards').get();

      if (querySnapshot.docs.isNotEmpty) {
        // Choose a document from the query result (e.g., the first document)
        var documentSnapshot = querySnapshot.docs.first;
        setState(() {
          currentCardValue = documentSnapshot['value'];
          currentDocumentId = documentSnapshot.id;
        });
      } else {
        setState(() {
          currentCardValue = 'No documents found';
          currentDocumentId = '';
        });
      }
    } catch (e) {
      print('Error fetching data: $e');
      setState(() {
        currentCardValue = 'Error fetching data';
        currentDocumentId = '';
      });
    }
  }

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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Card(
                  color: const Color.fromARGB(255, 17, 17, 17),
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                    width: 300,
                    height: 540,
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
                                padding: const EdgeInsets.all(20.0),
                                alignment: Alignment.center,
                                child: Center(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 170,
                                      child: Image.asset(
                                        'lib/images/DD_logo3_red 1.png',
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 50,
                                    ),
                                    Container(
                                      height: 250,
                                      alignment: Alignment.center,
                                      child: Text(
                                        currentCardValue,
                                        style: const TextStyle(
                                          fontSize: 22,
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                )),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle button press
                    fetchCardValue();
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
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    // Handle button press
                    fetchCardValue();
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
                      Text('    Next   '),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
