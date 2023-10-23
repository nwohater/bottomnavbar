import 'package:bottomwidget/Widgets/bottomnav.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Brandon\'s Lame App'),
        ),
        body: const Center(
          child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Text('Main Content Goes Here')),
        ),
        bottomNavigationBar: CustomBottomNavBar(
          icon1: Icons.arrow_left,
          icon2: Icons.arrow_right,
          statusText: '',
          onIcon1Pressed: () {
            // Handle icon 1 tap
          },
          onIcon2Pressed: () {
            // Handle icon 2 tap
          },
        ),
      ),
    );
  }
}
