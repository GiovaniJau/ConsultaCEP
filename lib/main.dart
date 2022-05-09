import 'package:flutter/material.dart';
import 'screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Consulta CEP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light, primarySwatch: Colors.amber),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const HomePage(),
    );
  }
}
