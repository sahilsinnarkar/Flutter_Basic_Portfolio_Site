import 'package:flutter/material.dart';
import 'package:portfolio_site/portfolio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'custom',
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple).copyWith(background: Colors.purple.shade50),
      ),
      home: const Portfolio(),
    );
  }
}
