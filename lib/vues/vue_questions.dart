

// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:maker1/vues/composants/contenu.dart';
import 'package:get/get.dart';
import 'package:maker1/vues/controller/questions_controller.dart';

class Vuequestions extends StatefulWidget {
  Vuequestions({Key? key}) : super(key: key);

  

  @override
  State<Vuequestions> createState() => _questionsState();
}


// ignore: camel_case_types
class _questionsState extends State<Vuequestions> {
  @override
  Widget build(BuildContext context) {
     FlameAudio.bgm.play('question.mp3', volume: .25);
    // ignore: non_constant_identifier_names
    Questions_controller _questions_controller =Get.put(Questions_controller());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // Fluttter show the back button automatically
       backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          FlatButton(onPressed: _questions_controller.nextQuestion  , child: const Text("Suivant")),
        ],
      ),
     body:  Contenu(),
    );
  }
}

