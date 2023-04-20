// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors
/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maker1/vues/controller/questions_controller.dart';
import 'package:maker1/vues/home.dart';
import 'package:flame_audio/flame_audio.dart';


void main() async {
  
 // FlameAudio.bgm.disableLog();
 // await bgm.preload();

 FlameAudio.bgm.loadAll([
    'Riptide.mp3',
    'question.mp3',
    'sfx/Riptide.mp3',
    'sfx/question.mp3'
    
   ]);
 
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GC QUIZ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF1C2341)),
       
      // ignore: prefer_const_constructors
      home: Home(),
     /// home: const Vuequestions(),
    );
  }
}

*/
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:maker1/vues/home.dart';
import 'package:flame_audio/flame_audio.dart';
void main() {
  FlameAudio.bgm.loadAll([
    'Riptide.mp3',
    'lose.mp3',
    'Applause.mp3',
    'question.mp3',
    'sfx/Riptide.mp3',
    'sfx/question.mp3'
    
   ]);
  runApp(
    /// 1. Wrap your App widget in the Phoenix widget
    Phoenix(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 

 
   @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GC QUIZ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF1C2341)),
      //  theme: ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 214, 215, 221)),
       
      // ignore: prefer_const_constructors
      home: Home(),
     /// home: const Vuequestions(),
    );
  }
}
