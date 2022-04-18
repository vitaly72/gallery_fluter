import 'package:flutter/material.dart';
import 'screens/HomePage.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Gallery';
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(title: appTitle),
      debugShowCheckedModeBanner: false,
    );
  }
}