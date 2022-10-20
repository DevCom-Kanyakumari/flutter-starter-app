import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyRequestPage extends StatefulWidget {
  const MyRequestPage({super.key});

  @override
  State<MyRequestPage> createState() => _MyRequestPageState();
}

class _MyRequestPageState extends State<MyRequestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Request Screen'),
      ),
      backgroundColor: Colors.white,
      body: Center(child: Text('Request Screen under constraction')),
    );
  }
}
