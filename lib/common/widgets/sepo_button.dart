import 'package:flutter/material.dart';

class SepoButton extends StatelessWidget {
  const SepoButton({
    Key? key,
    this.onPressed,
    required this.label,
    this.disabled = false,
    this.loading = false,
    this.style,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String label;
  final bool disabled;
  final bool loading;
  final ButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: style,
      onPressed: disabled
          ? null
          : () {
        if (loading) return;
        onPressed?.call();
      },
      child: loading ? _buildLoadingIndicator(context) : Text(label),
    );
  }

  _buildLoadingIndicator(BuildContext context) {
    return SizedBox(
      height: 32,
      width: 32,
      child: CircularProgressIndicator(
        strokeWidth: 4,
        color: Theme.of(context).colorScheme.onPrimary,
      ),
    );
  }
}
