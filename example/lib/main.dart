import 'package:flutter/material.dart';
import 'package:melon_bouncing/melon_bouncing.dart';

void main() {
  MelonBouncingPluginEnvironment.instance.init(fontFamily: "Itim");
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('ทดสอบ').hover(),
        ),
      ),
    );
  }
}
