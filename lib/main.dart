import 'package:flutter/material.dart';
import 'package:test/dialog_cache.dart';
import 'package:test/dialog_flag.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Dialog Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Hello World!'),
            ElevatedButton(
              onPressed: () {
                FlagDialog.show(context);
                FlagDialog.show(context);
              },
              child: const Text('Flag Dialog'),
            ),
            ElevatedButton(
              onPressed: () {
                CacheDialog.show(context);
                CacheDialog.show(context);
              },
              child: const Text('Async Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
