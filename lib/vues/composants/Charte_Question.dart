// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:maker1/default.dart';
import 'package:maker1/model/liste_questions.dart';
import 'package:maker1/vues/composants/Choix.dart';
import 'package:maker1/vues/controller/questions_controller.dart';

// ignore: camel_case_types
class Charte_Question extends StatelessWidget {
  const Charte_Question({
    Key? key,
    required this.question,
  }) : super(key: key);
             

             final Liste_questions question;
  @override
  Widget build(BuildContext context) {
      // ignore: non_constant_identifier_names
      Questions_controller _questions_controller = Get.put(Questions_controller());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
    padding: EdgeInsets.all(kDefaultPadding),
    decoration: BoxDecoration( color: Color.fromARGB(255, 255, 255, 255),
    borderRadius: BorderRadius.circular(25) ),
    child:Column(
     children: [
         Text(
        question.question,
          style: Theme.of(context)
                   .textTheme
                   .headline6
                   ?.copyWith(color :Color.fromARGB(130, 0, 0, 0)),
       ),
       SizedBox(height: kDefaultPadding /2),
        SizedBox(height: kDefaultPadding /2),
        ...List.generate(
            question.options.length,
            (index) => Choix(
              index: index,
              text: question.options[index],
              press: () => _questions_controller.checkAns(question, index),
            ),
         ),
         
     ],
    ), 
    );
  }
}
