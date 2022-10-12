import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hacktoberfest',
      theme: ThemeData(
        
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: Colors.indigo[700],
      ),
      home: const MyHomePage(title: 'Hacktoberfest 2022'),
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
  image: NetworkImage('https://hackthisfall.tech/_nuxt/img/hacktoberfest-logo.04e7168.png'),
),
            const   Padding(
                          padding: EdgeInsets.only(left:15, bottom: 50, right: 20, top:40), //apply padding to some sides only
                          child: Text(
              'Hacktoberfest Contributor List ',

              style: TextStyle(
              color: Colors.white ,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.italic,
              fontFamily: 'Open Sans',
              fontSize: 20,
      
      ),
              
            ),
                        ),
            Card(
      child: ListTile(
        title: Text('Sijin'),
      ),
    ),
      Card(
      child: ListTile(
        title: Text('Rajesh Kannan M'),
      ),
    ),
           
          ],
        ),
      ),
      
    );
  }
}
