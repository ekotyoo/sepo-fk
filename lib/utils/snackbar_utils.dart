import 'package:flutter/material.dart';

enum SnackbarType { error, success }

showSnackbar(
  BuildContext context, {
  SnackbarType type = SnackbarType.success,
  required String message,
}) {
  final snackbar = SnackBar(
    content: Text(message),
    backgroundColor: type == SnackbarType.success ? Colors.green : Colors.red,
    duration: const Duration(seconds: 2),
  );
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..clearSnackBars()
    ..showSnackBar(snackbar);
}
