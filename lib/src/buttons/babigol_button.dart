import 'package:babigol/babigol.dart';
import 'package:flutter/material.dart';

class BabigolButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final Color? color;
  const BabigolButton({super.key, required this.onPressed, required this.child, this.color});

  @override
  Widget build(BuildContext context) {
    final colors = BabigolColors.of(context);
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? colors.secondary,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)
        )
      ),
      child: child,
    );
  }
}