import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final IconData icon1;
  final IconData icon2;
  final String statusText;
  final VoidCallback onIcon1Pressed;
  final VoidCallback onIcon2Pressed;
  

  const CustomBottomNavBar({
    Key? key,
    required this.icon1,
    required this.icon2,
    required this.statusText,
    required this.onIcon1Pressed,
    required this.onIcon2Pressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue, // Customize the background color
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: onIcon1Pressed,
            child: Icon(icon1, size: 30, color: Colors.white),
          ),
          Text(
            statusText,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
          InkWell(
            onTap: onIcon2Pressed,
            child: Icon(icon2, size: 30, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
