import 'package:flutter/material.dart';

import 'bottom_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Kak Limah Go',
      home: MyHomePage(title: 'Kak Limah Go Cafe'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    loadDataAndNavigate(context);
    return const Scaffold(
      body: Center(
          child: Image(image: AssetImage("assets/images/loading-fast.gif"))),
    );
  }
}

Future<void> loadDataAndNavigate(BuildContext context) async {
  // Simulate loading time
  await Future.delayed(const Duration(seconds: 3));

  // Navigate to another screen
  // ignore: use_build_context_synchronously
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const BottomNavBar()),
  );
}
