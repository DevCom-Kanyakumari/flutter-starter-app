import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_app/pages/Login.dart';
import 'package:url_launcher/url_launcher.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hacktoberfest',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: Colors.indigo[700],
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title:'Hacktoberfest'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(

      //   title: Text(widget.title),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Image(
              image: NetworkImage(
                  'https://hackthisfall.tech/_nuxt/img/hacktoberfest-logo.04e7168.png'),
            ),
            const Padding(
              padding: EdgeInsets.only(
                  left: 15,
                  bottom: 50,
                  right: 20,
                  top: 40), //apply padding to some sides only
              child: Text(
                'Hacktoberfest Contributor List ',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Open Sans',
                  fontSize: 20,
                ),
              ),
            ),
            Card(
              child: ListTile(
                  title: Text('Sijin Raj SR'),
                  onTap: () => launch('https://github.com/sijin-raj')),
            ),
            Card(
              child: ListTile(
                  title: Text('Rajesh Kannan M'),
                  onTap: () => launch('https://github.com/rajeshkannanoffl')),
            ),
            Card(
              child: ListTile(
                  title: Text('Move to login'),
                  onTap: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => LoginScreen()))),
            ),
          ],
        ),
      ),
    );
  }
}
