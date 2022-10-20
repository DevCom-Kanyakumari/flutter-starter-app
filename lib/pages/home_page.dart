import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'img/hello.gif',
              fit: BoxFit.contain,
              width: 400,
            )),
      ),
    );
  }
}
