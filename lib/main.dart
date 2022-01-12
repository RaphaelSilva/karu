import 'package:flutter/material.dart';
import 'package:karu/features/presenter/pages/home.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final homePage = const HomePage(
    title: 'Menu de Ações',
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ola mundo hjuhuh',
      home: homePage,
    );
  }
}
