import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 179, 58, 183)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
      ),
      body: Column(
        
        children: <Widget>[
          SizedBox(height: 30,),
          Stack(
          children: [
            SizedBox(height: 30,),
            Image.asset("assets/images/image1.jpg", height: 300,width: 200,fit: BoxFit.contain,),
            Container(height: 320, width: 220, color: Colors.black.withOpacity(0.5),),
            Positioned.fill(child: Center(
              child: Text("Welcome to Flutter", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold), textAlign: TextAlign.center, ),
            ))
          ]
          ),
          SizedBox(height: 30,),

           Column(
          children: [
            SizedBox(height: 30,),
            Image.asset("assets/images/image2.jpg",height: 200,width: 300, fit: BoxFit.contain,),

            SizedBox(height: 20,),

            SizedBox(width: 200, height: 50,
            child: ElevatedButton(
              onPressed: () {}, child: Text("Show SnackBar", style: TextStyle(fontSize: 16, color: Colors.white),))
            ),
         
         
          ],

          ),






        ],
      ),
      
    );
  }
}
