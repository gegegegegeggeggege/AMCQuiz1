import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(  //#1 Material app serves as the main widget of a flutter, it also define all designs
    title: 'Week 1 - All 8 Widgets',
    theme: ThemeData(primarySwatch: Colors.teal),
    home: const HomeScreen(),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(  //#2 Scaffold provides the basic visual layout of the screen 
    appBar: AppBar(title: const Text('All Widgets')), //#3 AppBar is the top section of the app that displays the title and buttons for navigation
    body: Center( //#7 Center position in the middle of the available space
      child: Container(  //#8 Container is a layout used to control padding, margins, background etc.
        padding: const EdgeInsets.all(20),
        child: Column(  //#6 column arranged the widgets from top to bottom
          children: [
            Row(  //#5 Row places widget horizontally line in a single line
              children: [
                const Icon(Icons.star),
                const Text('Flutter'), //# 4 Flutter is a UI framework used to create application from a codebase
              ],
            ),
          ],
        ),
      ),
    ),
  );
}