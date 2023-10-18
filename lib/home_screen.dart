import 'package:flutter/material.dart';
import 'package:test_sample/screens/sample_retro_screen.dart';
import 'package:test_sample/tests/provider_sample.dart';
import 'package:test_sample/tests/test_one.dart';
import 'package:test_sample/tests/test_two.dart';
import 'package:test_sample/tests/third_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Practice"),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("Api Call"),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const TestOneScreen())),
            ),
            ElevatedButton(
              child: const Text("Api Call 2"),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const TestTwoScreen())),
            ),
            ElevatedButton(
              child: const Text("Api Call 3"),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const FirstPostApi())),
            ),
            ElevatedButton(
              child: const Text("Provider"),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ProviderSample())),
            ),
            ElevatedButton(
              child: const Text("Retrofit"),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SampleRetroScreen())),
            ),
          ],
        ),
      ),
    );
  }
}
