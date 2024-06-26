import 'package:babigol/babigol.dart';
import 'package:flutter/material.dart';

class BabigolTextButton extends StatelessWidget {
  
  final VoidCallback onPressed;
  final String label;
  final Color? color;

  const BabigolTextButton({
    super.key, 
    required this.onPressed, 
    required this.label, 
    this.color
  });

  @override
  Widget build(BuildContext context) {
    final colors = BabigolColors.of(context);
    return TextButton(
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(label,
            style: TextStyle(color: colors.white, fontSize: 20),
          ),
          //Image(image: )
        ],
      ),
    );
  }
}