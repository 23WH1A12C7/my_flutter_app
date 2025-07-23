import 'package:flutter/material.dart';

void main() {
  runApp(MyWidgetDemoApp());
}

class MyWidgetDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Widgets Demo')),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Welcome to Flutter!',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),

              // Image from network
              Image.network(
                'https://flutter.dev/assets/homepage/carousel/slide_1-bg-ef998e24759efcbbd37d6b5622a20b4aa2a12a5e2de71bb10243e22b0e36b77d.jpg',
                height: 150,
              ),
              SizedBox(height: 20),

              // Container with styling and Text inside
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'This is a Container widget with padding and background color.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),

              // Row with Icons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.favorite, color: Colors.red, size: 36),
                  Icon(Icons.thumb_up, color: Colors.blue, size: 36),
                  Icon(Icons.share, color: Colors.green, size: 36),
                ],
              ),
              SizedBox(height: 20),

              // ElevatedButton
              ElevatedButton(
                onPressed: () {
                  print('Button pressed!');
                },
                child: Text('Press Me'),
              ),
              SizedBox(height: 20),

              // Card widget
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'This is a Card widget with some text inside.',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
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
