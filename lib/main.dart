import 'package:flutter/material.dart';
import 'package:test/dialog.dart';

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
                CustomDialog.show(context);
                CustomDialog.show(context);
              },
              child: const Text('Show Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
