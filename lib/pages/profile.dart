import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Profile Screen'),
      ),
      backgroundColor: Colors.white,
    );
  }
}
