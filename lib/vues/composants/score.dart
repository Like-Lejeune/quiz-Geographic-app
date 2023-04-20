// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maker1/vues/controller/questions_controller.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:restart_app/restart_app.dart';



class Score extends StatefulWidget {
  const Score( {Key? key}) : super(key: key);


  @override
  State<Score> createState() => _ScoreState();
}
   Questions_controller _qnController = Get.put(Questions_controller());

class _ScoreState extends State<Score> {
  List<String>images = [
"assets/icons/travail.png",
"assets/icons/moyen.png",
"assets/icons/meilleur.png",
"assets/icons/leader.png",
  ];
late String message;
late String image;
  @override
  void initState() {

   if(_qnController.numOfCorrectAns * 10 < 50)
   {
     FlameAudio.playLongAudio('faible.mp3', volume: .25);
     message ='Courage votre score est : ${_qnController.numOfCorrectAns * 10}';
     image =images[0];
   } else if(_qnController.numOfCorrectAns * 10 >= 60 && _qnController.numOfCorrectAns * 10 < 80 ){
      FlameAudio.playLongAudio('Applause.mp3', volume: .25);
          message ='Vous avez un bon niveau votre score est : ${_qnController.numOfCorrectAns * 10}';
          image =images[3];
   }else if(_qnController.numOfCorrectAns * 10 >= 80)
   {
     FlameAudio.playLongAudio('Applause.mp3', volume: .25);
       message ='Vous êtes Excelent votre score est : ${_qnController.numOfCorrectAns * 10}';
        image =images[2];
   }
   else{
        message ='Vous êtes Moyen votre score est : ${_qnController.numOfCorrectAns * 10}';
         FlameAudio.playLongAudio('lose.mp3', volume: .25);
         image =images[1];
   }
    super.initState();
  }

   
  @override
  Widget build(BuildContext context) {
    FlameAudio.bgm.stop();
      

      
    Questions_controller _qnController = Get.put(Questions_controller());
    return Scaffold(
    
      body:Column(
         
        children:  <Widget> [
            Spacer(),
    Expanded(
  flex: 4,
  
  child:Material(
    child: Container(
                      
      child:  Column(
        children:  <Widget> [
                     
                 Material(
                    child: Container(
                      height: 350.0,
                      width: 350.0,
                      child: ClipOval(
                        child: Image(
                          image: AssetImage(
                            image,
                          ),
                        ),
                      ),
                    ),
                  ),
                 
                   Spacer(),
                   Center(
                  child: Text(
                   message,
                    style: TextStyle(
                      fontSize: 21.0,
                      fontFamily: "Arizona"
                    )
                  ),
                ),
                       ]
                    ),
    ),
    
    ) ),
    Expanded(
  flex: 2,
  child:Material(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
        OutlinedButton(onPressed: (){Restart.restartApp();},
         child:Text(
           'Terminer',
         ),
       
         ),
         
      ],
    ),
    
    ) ),
     Spacer(), Spacer(),
        ],
       
       /* children: [
       
          Column(
            children: [
              // ignore: prefer_const_constructors
              Spacer(flex: 3),
            //  Image(image: AssetImage(image) ),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    ?.copyWith(color: Color.fromARGB(255, 255, 255, 255),),
              ),
              // ignore: prefer_const_constructors
              Spacer(),
              
              Text(
               message,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                     ?.copyWith(color: Color.fromARGB(255, 255, 255, 255),),
              ),
               const Spacer(flex: 2), // 1/6
                
                  
                InkWell(
                   // ignore: prefer_const_constructors
                
                      onTap: () =>  Restart.restartApp(),
                     child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(kDefaultPadding * 0.75), // 15
                      decoration: const BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    
                      child: Text(
                        "Terminer",
                        style: Theme.of(context)
                            .textTheme
                            .button,
                      ),
                    ),
                  ),
              // ignore: prefer_const_constructors
              
              Spacer(flex: 3),
            ],
          )
        ],*/
      ),
    );
  }
  
  }