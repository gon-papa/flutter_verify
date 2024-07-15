import 'package:flutter/material.dart';

class FlagDialog extends StatelessWidget {
  const FlagDialog({super.key});

  static bool _isShow = false;

  static void _updateShow() {
    _isShow = !_isShow;
  }

  static void show(BuildContext context) {
    if (!_isShow) {
      _updateShow();
      showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return const FlagDialog();
        },
      ).then((value) {
        _updateShow();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Flag Dialog'),
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
