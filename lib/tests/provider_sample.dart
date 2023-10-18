import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_sample/service/provider_classs.dart';

class ProviderSample extends StatefulWidget {
  const ProviderSample({super.key});

  @override
  State<ProviderSample> createState() => _ProviderSampleState();
}

class _ProviderSampleState extends State<ProviderSample> {
  late ProviderClass provider;
  var secondCounter = 0;

  @override
  void initState() {
    super.initState();
    provider = Provider.of<ProviderClass>(context, listen: false);

    Timer.periodic(Duration(seconds: 1), (timer) {
      provider.timerCounter();
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('damn0');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Provider Sample'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<ProviderClass>(
                builder: (BuildContext context, value, Widget? child) {
                  return Text(value.count.toString());
                },
            ),
            ElevatedButton(
                onPressed:  () {
                  // count++;
                  // debugPrint('damn1 = $count');
                  provider.increment();

                },
                child: Text('Increment')),
            Consumer<ProviderClass>(
                builder: (BuildContext context, value, Widget? child) {
                  return Text(value.secondCounter.toString());
                },
            )



          ],
        ),
      ),
    );
  }


}
