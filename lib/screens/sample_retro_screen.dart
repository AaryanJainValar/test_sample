import 'package:flutter/material.dart';

class SampleRetroScreen extends StatefulWidget {
  const SampleRetroScreen({super.key});

  @override
  State<SampleRetroScreen> createState() => _SampleRetroScreenState();
}

class _SampleRetroScreenState extends State<SampleRetroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text("Retrofit"),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.lightGreen,
          child: Text('Retrofit'),
        ),
      ),
    );
  }
}
