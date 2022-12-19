import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptativeButton extends StatelessWidget {
  final String label;
  final Function() onPressed;

  const AdaptativeButton({
    required this.label,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            onPressed: onPressed,
            color: Theme.of(context).primaryColor,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text(label),
          )
        : ElevatedButton(
            onPressed: onPressed,
            style: ButtonStyle(
              backgroundColor: MaterialStateColor.resolveWith(
                  (states) => Theme.of(context).colorScheme.primary),
            ),
            child: Text(
              label,
              style: TextStyle(
                color: Theme.of(context).textTheme.button!.color,
              ),
            ),
          );
  }
}
