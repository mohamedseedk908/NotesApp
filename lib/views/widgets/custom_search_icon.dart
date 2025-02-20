import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          color: Colors.white.withValues(green: 500),
          borderRadius: BorderRadius.circular(16)
      ),
      child: Center(
          child: Icon(icon,size: 28)
      ),
    );
  }
}
