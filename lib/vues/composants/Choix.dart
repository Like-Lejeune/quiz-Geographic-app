// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_equal_for_default_values

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:maker1/default.dart';
import 'package:maker1/vues/controller/questions_controller.dart';

class Choix extends StatelessWidget {
   
  Choix({
    
    Key? key, required this.text, required this.index, required this.press,
  }) : super(key: key);
   final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Questions_controller>(
     init: Questions_controller(),
      builder: (qnContoller) {
         Color getTheRightColor() {
            if (qnContoller.isAnswered) {
              if (index == qnContoller.correctAns) {
                return kGreenColor;
              } else if (index == qnContoller.selectedAns &&
                  qnContoller.selectedAns != qnContoller.correctAns) {
                return kRedColor;
              }
            }
            return kGrayColor;
          }

            IconData getTheRightIcon() {
            return getTheRightColor() == kRedColor ? Icons.close : Icons.done;
          }
        return InkWell(
          onTap: press ,
          child: Container(
            margin: EdgeInsets.only(top: kDefaultPadding),
            padding: EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
              border: Border.all( color: kGrayColor),
              borderRadius: BorderRadius.circular(10),
        
             ),
            
             child: Row(
               
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 
                 Text(
                   "${index +1} $text",
                   style: TextStyle( color: kGrayColor,fontSize: 17),
                 ),
                 Container(
                   height: 30,
                   width: 30,
                   decoration: BoxDecoration(
                    color: getTheRightColor() == kGrayColor
                          ? Colors.transparent
                          : getTheRightColor(),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: getTheRightColor()),
                     ),
                      child: getTheRightColor() == kGrayColor
                        ? null
                        : Icon(getTheRightIcon(), size: 18),
                 ),
               ]
             ),
          ),
        );
      }
    );
  }
}



