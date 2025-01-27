import 'package:flutter/material.dart';

class ItemAccount extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const ItemAccount({
    Key? key,
    required this.icon,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey,
              width: 0.5,
            ),
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.green,
              size: 30.0,
            ),
            SizedBox(width: 10),
            Text(label),
          ],
        ),
      ),
    );
  }
}
