import 'package:flutter/material.dart';

class BabigolIconButton extends StatelessWidget {
  
  final VoidCallback onPressed;
  final Color colorText;
  final Widget label;
  final IconData icon;

  const BabigolIconButton({super.key, 
    required this.onPressed,
    required this.colorText,
    required this.label,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, size: 30, color: Colors.white),
      label: label,
      style: ElevatedButton.styleFrom(
        backgroundColor: colorText,
        textStyle: const TextStyle(fontSize: 16),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      ),
    );
  }
}
