
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MediaQueryExample(),
    );
  }
}

class MediaQueryExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the screen width using MediaQuery
    double screenWidth = MediaQuery.of(context).size.width;

    // Set different properties based on screen width
    double fontSize = screenWidth < 600 ? 16 : 24;
    Color backgroundColor = screenWidth < 700 ? const Color.fromARGB(255, 250, 236, 44) : const Color.fromARGB(255, 173, 99, 216);

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text('MediaQuery Example'),
      ),
      body: Center(
        child: Text(
          'Screen width: $screenWidth\nThis text is responsive!',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: fontSize, color: Colors.white),
        ),
      ),
    );
  }
}
