import 'package:flutter/material.dart';

class MenuGridButton extends StatelessWidget {
  const MenuGridButton({Key? key, required this.label, required this.icon})
      : super(key: key);
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon),
            Text(
              label,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
      color: Colors.teal[100],
    );
  }
}
