// ignore_for_file: unused_field, prefer_final_fields, unused_import

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shoppingcart/question.dart';

class BrainQuiz {
  int _nextindex = 0;
  List<Quizconst> _contestQuiz = [
    Quizconst(q: 'Snakes have legs', a: false),
    Quizconst(q: 'Birds can breathe underwater', a: false),
    Quizconst(q: 'Apples grow on trees', a: true),
    Quizconst(q: 'Plants need sunlight to grow', a: true),
    Quizconst(q: 'Cats bark like dogs', a: false),
    Quizconst(q: 'Penguins can fly', a: false),
    Quizconst(q: 'The sun rises in the west', a: false),
    Quizconst(q: 'The moon is made of cheese', a: false),
    Quizconst(q: 'Fish live only in the sea', a: false),
  ];

  String questionTxt() {
    return _contestQuiz[_nextindex].q;
  }

  bool answerTxt() {
    return _contestQuiz[_nextindex].a;
  }

  void fnextQuestion() {
    if (_nextindex < _contestQuiz.length - 1) {
      _nextindex++;
    }
  }

  bool isFinished() {
    if (_nextindex >= _contestQuiz.length - 1) {
      if (kDebugMode) {
        print('Now returing true');
      }
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _nextindex = 0;
  }
}


// class QuizBrain {
//   int _questionNumbers = 0;
//   List<Question> _questionBank = [
//     Question('Rainbow has 2 colors', false),
//     Question('Rainbow has 1 colors', false),
//     Question('Rainbow has 3 colors', false),
//     Question('Rainbow has 12 colors', false),
//     Question('Rainbow has many colors', true),
//     Question('Rainbow has 0 colors', false),
//   ];

//   void nextQuestion() {
//     if (_questionNumbers < _questionBank.length - 1) {
//       _questionNumbers++;
//     }
//     debugPrint(_questionNumbers as String?);
//     debugPrint(_questionBank.length as String?);
//   }

//   String getQuestions() {
//     return _questionBank[_questionNumbers].questionText;
//   }

//   bool getAnswers() {
//     return _questionBank[_questionNumbers].answerText;
//   }
// }

// class Quizdo {
//   int _indexQ = 0;

//   List<Swaalaat> _swaalonKiBook = [
//     Swaalaat(swaal: 'Human Have Two legs', jawab: true),
//     Swaalaat(swaal: 'Human has only one Ear', jawab: false)
//   ];

//   String pochoSwaal() {
//     return _swaalonKiBook[_indexQ].swaalPocho;
//   }

//   bool deDonJavab() {
//     return _swaalonKiBook[_indexQ].jawabDo;
//   }

//   void aglaQuestion() {
//     if (_indexQ < _swaalonKiBook.length - 1) {
//       _indexQ++;
//     }
//   }
// }
