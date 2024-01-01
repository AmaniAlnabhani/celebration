import 'dart:math';

import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home:const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
bool isPlaying=false;
  final controller= ConfettiController();

  @override
  void iniState(){
    super.initState();
    controller.play();
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(

        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(

                child: const Icon(Icons.celebration,
                color: Colors.black,) ,
                onPressed: (){
                  controller.play();

               },),
            ),
            Align(
              alignment: Alignment.center,
              child: ConfettiWidget(confettiController: controller,

                blastDirection: -pi /2,
                emissionFrequency: 0.2,
                numberOfParticles: 5,
                blastDirectionality: BlastDirectionality.explosive,
                gravity: 0.1,
                colors:const [
                  Colors.blueAccent,
                  Colors.pinkAccent,
                  Colors.orangeAccent,
                  Colors.purpleAccent,
                ],
              ),
            ),



          ],
        ),
        ),
      );


  }
}
