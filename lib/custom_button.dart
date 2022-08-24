import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    this.color,
    required this.label,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final Color? color;
  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            primary: color,
            onSurface: Colors.white,
            minimumSize: const Size.fromWidth(double.infinity),
          ),
          child: Text(
            label,
            style: const TextStyle(fontSize: 30.0),
          ),
        ),
      ),
    );
  }
}
