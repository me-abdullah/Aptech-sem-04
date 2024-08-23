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
  late Animation animation;
  late Animation colorAnimation;
  late AnimationController animationController;


  @override
  void initState(){
    super.initState();

    animationController = AnimationController(vsync: this, duration: Duration(seconds: 10));
    animation = Tween<double>(begin: 0.0, end: 200.0).animate(animationController);
    colorAnimation = ColorTween(begin: Colors.blue,end: Colors.orange).animate(animationController);
    animationController.addListener((){
      print(animation.value);
      setState(() {

      });
    });
    animationController.forward();
}
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Tween Animation"),
      ),
      body: Center(
          child: Container(
            width: animation.value,
            height: animation.value,
            color: colorAnimation.value,
          ),
      ),
    );
  }
}