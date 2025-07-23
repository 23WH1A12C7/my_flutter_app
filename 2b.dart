import 'package:flutter/material.dart';

void main() {
  runApp(LayoutExampleApp());
}

class LayoutExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Examples',
      home: Scaffold(
        appBar: AppBar(title: Text('Row, Column, Stack Examples')),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Column Layout
                Text(
                  'Column Layout',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: [
                    Container(color: Colors.red, height: 50, width: double.infinity),
                    Container(color: Colors.green, height: 50, width: double.infinity),
                    Container(color: Colors.blue, height: 50, width: double.infinity),
                  ],
                ),
                SizedBox(height: 20),

                // Row Layout
                Text(
                  'Row Layout',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(color: Colors.orange, height: 50, width: 50),
                    Container(color: Colors.purple, height: 50, width: 50),
                    Container(color: Colors.cyan, height: 50, width: 50),
                  ],
                ),
                SizedBox(height: 20),

                // Stack Layout
                Text(
                  'Stack Layout',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.grey[300],
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(color: Colors.yellow, width: 150, height: 150),
                      Container(color: Colors.green, width: 100, height: 100),
                      Container(color: Colors.red, width: 50, height: 50),
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
