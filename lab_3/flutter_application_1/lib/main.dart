import 'package:flutter/material.dart';
void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  get body => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      title: "Welcome",
      theme: ThemeData(
        primarySwatch: Colors.amber
      ),
      home: const MyHomePage(title: "Home page"),
      
      
     
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
      appBar: AppBar(
        title: Text('My app'),
      ),
      body: const Center(
        child: Text(
          'Hello to MY APP'
        ),
      ),
    );

  }
}