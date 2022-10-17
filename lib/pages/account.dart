import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyAccountPage extends StatefulWidget {
  const MyAccountPage({super.key});

  @override
  State<MyAccountPage> createState() => _MyAccountPageState();
}

class _MyAccountPageState extends State<MyAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Account Screen'),
      ),
      backgroundColor: Colors.white,
    );
  }
}
