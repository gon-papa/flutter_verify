import 'package:flutter/material.dart';
import 'package:async/async.dart';

class CacheDialog extends StatelessWidget {
  const CacheDialog({super.key});

  static AsyncCache cacheStrategy = AsyncCache.ephemeral();

  static void show(BuildContext context) {
    cacheStrategy.fetch(
      () async {
        showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return const CacheDialog();
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Cache Dialog'),
      content: const Text('This is the content of the dialog'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Close'),
        ),
      ],
    );
  }
}
