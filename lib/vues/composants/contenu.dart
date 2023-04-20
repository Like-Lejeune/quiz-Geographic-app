
// ignore_for_file: prefer__ructors, prefer__literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maker1/default.dart';
import 'package:maker1/vues/composants/Charte_Question.dart';
import 'package:maker1/vues/composants/progressbar.dart';
import 'package:maker1/vues/controller/questions_controller.dart';
class Contenu extends StatelessWidget {
   Contenu({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // So that we have acccess our controller
    // ignore: non_ant_identifier_names
    Questions_controller _questions_controller =Get.put(Questions_controller());
    return Stack(
      children: [
        SafeArea(
          child: Padding (
            padding:  EdgeInsets.symmetric( horizontal : kDefaultPadding),
            child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        
             children:   [
               // ignore: prefer_const_constructors
               Padding(
                 padding:  EdgeInsets.symmetric( horizontal : kDefaultPadding),
                 child: Progressbar(),
               ),
                 SizedBox(height: kDefaultPadding),
               Padding(
                 padding:  EdgeInsets.symmetric( horizontal : kDefaultPadding),
                 child: Obx(
                  () => Text.rich(
                    TextSpan(
                      text:
                          "Question ${_questions_controller.questionNumber.value}",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          ?.copyWith(color: kSecondaryColor),
                      children: [
                        TextSpan(
                          text: "/${_questions_controller.questions.length}",
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(color: kSecondaryColor),
                        ),
                      ],
                    ),
                  ),
                ),
               ),
                  Divider(thickness: 1.5),
               SizedBox(height: kDefaultPadding),
                Expanded(
                  child:
                 PageView.builder( 
                    physics: NeverScrollableScrollPhysics(),
                   controller: _questions_controller.pageController,
                    onPageChanged: _questions_controller.updateTheQnNum,
                  itemCount: _questions_controller.questions.length,
                  itemBuilder: ((context, index) => Charte_Question(question: _questions_controller.questions[index],)),
                ),
                ),
            ]),
            
            ),
            
),
]);
  }
  }

// ignore: camel_case_types
