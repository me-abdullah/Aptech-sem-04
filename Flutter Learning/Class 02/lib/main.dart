import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello World',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Flutter Container"),
      ),
      body: TextButton(
        child: Text("Click"),
        onPressed: (){
    print("this is text button");},
        onLongPress: (){
          print("this is longpress button");
        },
      )
        // child:  Container(
        //   width: 200,
        //   height: 200,
        //   color: Colors.orange,
        //   child: Text('Hello World' , style: TextStyle(
        //     fontSize: 20,
        //     color: Colors.blueAccent,
        //     fontWeight: FontWeight.bold,
        //     backgroundColor: Colors.yellow
        //   ),)
        // ),




    );
  }
}