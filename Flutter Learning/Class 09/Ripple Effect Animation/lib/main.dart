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

class _MyHomePageState extends State<MyHomePage>
with SingleTickerProviderStateMixin{
late Animation _animation;
late AnimationController _animationController;
var listRadius = [150.0,200.0,250.0,300.0,350.0];
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =AnimationController(vsync: this, duration: Duration(seconds:4),lowerBound: 0.5);
    // _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController);
    _animationController.addListener((){

    });
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Ripple Effect"),
      ),
      body: Center(
        child:  Stack(
          alignment: Alignment.center,
          children: listRadius.map((radius) => Container(
            width: radius*_animationController.value,
            height: radius*_animationController.value,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue.withOpacity(1.0 - _animationController.value),
            ),
          )).toList()
        ),
      ),

    );
  }
}