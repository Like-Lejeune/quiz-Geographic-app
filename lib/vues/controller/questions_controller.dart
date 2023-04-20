
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:maker1/model/liste_questions.dart';
import 'package:maker1/vues/composants/score.dart';
import 'package:flame_audio/flame_audio.dart';

// ignore: camel_case_types
class Questions_controller extends GetxController with 
 GetSingleTickerProviderStateMixin {
   
   late AnimationController _animationController ;
   late Animation _animation;
  Animation get animation => _animation ;
    late PageController _pageController;
  PageController get pageController => _pageController;

  // ignore: non_constant_identifier_names, prefer_final_fields
  List<Liste_questions> _questions = sample_data
      .map(
        (question) => Liste_questions(
            id: question['id'],
            question: question['question'],
            options: question['options'],
            answer: question['answer_index']),
      )
      .toList();
       List<Liste_questions> get questions =>_questions;

        bool _isAnswered = false;
  bool get isAnswered => _isAnswered;

   late int _correctAns;
  int get correctAns => _correctAns;

  late int _selectedAns;
  int get selectedAns => _selectedAns;

  // for more about obs please check documentation
  final RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => _questionNumber;

   late int _numOfCorrectAns = 0;
  int get numOfCorrectAns => _numOfCorrectAns;
  @override
  void onInit() {
    // Our animation duration is 60 s
    // so our plan is to fill the progress bar within 60s
    //
    _animationController =
         AnimationController(duration: Duration(seconds: 12), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        // update like setState
        update();
      });

    // start our animation
    // Once 60s is completed go to the next qn
   _animationController.forward().whenComplete(nextQuestion);
    _pageController = PageController();
   
    super.onInit();
  }

   @override
  void onClose() {
    super.onClose();
    _animationController.dispose();
    _pageController.dispose();
  }

  void checkAns(Liste_questions question, int selectedIndex) {
     FlameAudio.play('renomer.mp3', volume: .50);
     
     
    // because once user press any option then it will run
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) _numOfCorrectAns++;

    // It will stop the counter
    _animationController.stop();
    update();
    
    Future.delayed(const Duration(seconds: 3), () {
       nextQuestion();
      /* _pageController.nextPage(
          
          duration:  Duration(milliseconds: 250), curve: Curves.ease);

      // Reset the counter
      _animationController.reset();

      
     _animationController.forward().whenComplete(nextQuestion);*/
    
    });

    
  
  }
   void nextQuestion() {
    if (_questionNumber.value != _questions.length) {
     _isAnswered = false;
      _pageController.nextPage(
          
          duration:  Duration(milliseconds: 250), curve: Curves.ease);

      // Reset the counter
      _animationController.reset();

      
     _animationController.forward().whenComplete(nextQuestion);
    }
    else {
      // Get package provide us simple way to naviigate another page
    
 //_questionNumber.value = 1;
          Get.to(Score());
          
    } 
    
  }
     void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }
 

}
