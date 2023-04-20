
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maker1/default.dart';
import 'package:maker1/vues/vue_questions.dart';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'controller/questions_controller.dart';

class Home extends StatefulWidget {
  const Home( {Key? key}) : super(key: key);


  @override
  State<Home> createState() => _HomeState();
}
  

class _HomeState extends State<Home> {

  @override
  void initState() {
    super.initState();
  }

   @override
  Widget build(BuildContext context) {
     Questions_controller _questions_controller =Get.put(Questions_controller());
    
    return Scaffold(
      body: Stack(
        children: [
         // SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                
                children: [
                  const Spacer(flex: 2), //2/6
                  Text(
                    " Geographic Cameroon ",
                    style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(color: Color.fromARGB(255, 255, 255, 255),),
                  ),
                     const Spacer(flex: 1),
                 Text(" QUIZ ! ",
                   style: Theme.of(context)
                      .textTheme
                      .headline3
                      ?.copyWith(color:Color.fromARGB(255, 255, 255, 255),),),
                  const Spacer(flex: 2), 
                  InkWell(
                   // ignore: prefer_const_constructors
                   
                    onTap: () => Get.to( Vuequestions()),
                //  onTap: () =>  Phoenix.rebirth(context),
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(kDefaultPadding * 0.75), // 15
                      decoration: const BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Text(
                        "Commencer",
                        style: Theme.of(context)
                            .textTheme
                            .button,
                      ),
                    ),
                  ),
                  const Spacer(flex: 2), // it will take 2/6 spaces
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  
 
  
  }