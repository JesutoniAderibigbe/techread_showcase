import 'package:flutter/material.dart';

class CoolButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final bool isFilled;
  Color textColor;

  CoolButton({
    super.key,
    required this.label,
    required this.onPressed,
    required this.isFilled,
    this.textColor = const Color(0xFF1565C0),
  });

  @override
  Widget build(BuildContext context) {
    return isFilled
        ? ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            padding: const EdgeInsets.symmetric(vertical: 14.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 8,
            shadowColor: Colors.blueAccent.withOpacity(0.5),
          ),
          onPressed: onPressed,
          child: Text(
            label,
            style: TextStyle(
              color: isFilled ? Colors.white : textColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
        : OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 14.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            side: BorderSide(color: textColor),
          ),
          onPressed: onPressed,
          child: Text(
            label,
            style: TextStyle(
              color: textColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
  }
}
