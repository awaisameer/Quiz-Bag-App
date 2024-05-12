// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:shoppingcart/quizbrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

BrainQuiz totalQuiz = BrainQuiz();

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<Icon> storeKeepers = [];
  int score = 0;
  int correctAnswers = 0;

  void checkedAnswer(bool userpickedAnswer) {
    bool correctAnswer = totalQuiz.answerTxt();
    setState(() {
      if (totalQuiz.isFinished() == true) {
        Alert(
          context: context,
          title: 'Finished',
          desc:
              'You\'ve reached the end of the Quiz. \n\n Correct Answers: $correctAnswers \n Total Score: $score',
        ).show();
        totalQuiz.reset();
        storeKeepers = [];
        score = 0;
        correctAnswers = 0;
      } else {
        if (userpickedAnswer == correctAnswer) {
          storeKeepers.add(const Icon(
            Icons.check,
            color: Colors.green,
          ));
          score += 10;
          correctAnswers++;
        } else {
          storeKeepers.add(const Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        totalQuiz.fnextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Bag'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      totalQuiz.questionTxt(),
                      style: const TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        checkedAnswer(true);
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                      ),
                      child: const Text(
                        'True',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        checkedAnswer(false);
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                      ),
                      child: const Text(
                        'False',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: storeKeepers,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}











// import 'package:flutter/material.dart';
// import 'package:shoppingcart/quizbrain.dart';
// import 'package:rflutter_alert/rflutter_alert.dart';

// BrainQuiz totalQuiz = BrainQuiz();

// class Quiz extends StatefulWidget {
//   const Quiz({super.key});

//   @override
//   State<Quiz> createState() => _QuizState();
// }

// class _QuizState extends State<Quiz> {
//   List<Icon> storeKeepers = [];
//   int score = 0;
//   int correctAnswers = 0;

//   void checkedAnswer(bool userpickedAnswer) {
//     bool correctAnswer = totalQuiz.answerTxt();
//     setState(() {
//       if (totalQuiz.isFinished() == true) {
//         Alert(
//           style: AlertStyle(),
//           context: context,
//           title: 'Finished',
//           desc:
//               'You\'ve reached the end of the Quiz. \n\n Correct Answers: $correctAnswers \n Total Score: $score',
//         ).show();
//         totalQuiz.reset();
//         storeKeepers = [];
//         score = 0;
//         correctAnswers = 0;
//       } else {
//         if (userpickedAnswer == correctAnswer) {
//           storeKeepers.add(const Icon(
//             Icons.check,
//             color: Colors.green,
//           ));
//           score += 10; // Increase score for correct answer
//           correctAnswers++; // Increment correct answers count
//         } else {
//           storeKeepers.add(const Icon(
//             Icons.close,
//             color: Colors.red,
//           ));
//         }
//         totalQuiz.fnextQuestion();
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('QuiZ BaG'),
//         centerTitle: true,
//       ),
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Expanded(
//                 flex: 5,
//                 child: Center(
//                   child: Text(
//                     totalQuiz.questionTxt(),
//                     style: const TextStyle(fontSize: 33),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.all(15.0),
//                   child: TextButton(
//                     style: ButtonStyle(
//                         backgroundColor:
//                             MaterialStateProperty.all(Colors.green)),
//                     onPressed: () {
//                       checkedAnswer(true);
//                     },
//                     child: const Text(
//                       'True',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.all(15.0),
//                   child: TextButton(
//                     style: ButtonStyle(
//                         backgroundColor: MaterialStateProperty.all(Colors.red)),
//                     onPressed: () {
//                       checkedAnswer(false);
//                     },
//                     child: const Text(
//                       'False',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: storeKeepers,
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }






































// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

// import 'package:flutter/material.dart';
// import 'package:shoppingcart/question.dart';
// import 'package:shoppingcart/quizbrain.dart';
// import 'package:rflutter_alert/rflutter_alert.dart';

// // QuizBrain quizBrainn = QuizBrain();
// // Quizdo fiNALQuizdedo = Quizdo();
// BrainQuiz totalQuiz = BrainQuiz();

// class Quiz extends StatefulWidget {
//   const Quiz({super.key});

//   @override
//   State<Quiz> createState() => _QuizState();
// }

// class _QuizState extends State<Quiz> {
//   List<Icon> storeKeepers = [];
//   int score = 0;
//   int correctAnswers = 0;
//   void checkedAnswer(bool userpickedAnswer) {
//     bool correctAnswer = totalQuiz.answerTxt();
//     setState(() {
//       if (totalQuiz.isFinished() == true) {
//         Alert(
//           context: context,
//           title: 'Finished',
//           desc: 'You\'ve reached the end f the Quiz.',
//         ).show();
//         totalQuiz.reset();
//         storeKeepers = [];
//         score = 0;
//         correctAnswers = 0;
//       } else {
//         if (userpickedAnswer == correctAnswer) {
//           // print('You got it Right');
//           storeKeepers.add(Icon(
//             Icons.check,
//             color: Colors.green,
//           ));
//           score += 10;
//           correctAnswers++;
//         } else {
//           // print('You failed');
//           storeKeepers.add(Icon(
//             Icons.close,
//             color: Colors.red,
//           ));
//         }

//         totalQuiz.fnextQuestion();
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('QuiZ BaG'),
//         centerTitle: true,
//       ),
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Expanded(
//                 flex: 5,
//                 child: Center(
//                   child: Text(
//                     totalQuiz.questionTxt(),
//                     style: TextStyle(fontSize: 33),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.all(15.0),
//                   child: TextButton(
//                     style: ButtonStyle(
//                         backgroundColor:
//                             MaterialStatePropertyAll(Colors.green)),
//                     onPressed: () {
//                       checkedAnswer(true);
//                       // bool sahiJavab = totalQuiz.answerTxt();
//                       // if (sahiJavab == true) {
//                       //   debugPrint('YoU GOT IT');
//                       // } else {
//                       //   debugPrint('Fail');
//                       // }
//                       // setState(() {
//                       //   totalQuiz.fnextQuestion();
//                       // });
//                       // bool correctAnswer = quizBrainn.getAnswers();
//                       // // quizBrainn.questionBank[questionNumbers].answerText;
//                       // if (correctAnswer == true) {
//                       //   print('User Got the Answer');
//                       // } else {
//                       //   print('User failed');
//                       // }
//                       // setState(() {
//                       //   quizBrainn.nextQuestion();
//                       //   // storeKeeper.add(
//                       //   //   Icon(
//                       //   //     Icons.check,
//                       //   //     color: Colors.green,
//                       //   //   ),

//                       //   // );
//                       // });
//                     },
//                     child: Text(
//                       'True',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.all(15.0),
//                   child: TextButton(
//                     style: ButtonStyle(
//                         backgroundColor: MaterialStatePropertyAll(Colors.red)),
//                     onPressed: () {
//                       checkedAnswer(false);
//                       // bool sahiJavab = totalQuiz.answerTxt();
//                       // if (sahiJavab == false) {
//                       //   debugPrint('You got it');
//                       // } else {
//                       //   debugPrint('fail');
//                       // }
//                       // setState(() {
//                       //   totalQuiz.fnextQuestion();
//                       // });
//                       // bool rightAnswer = quizBrainn.getAnswers();
//                       // // quizBrainn.questionBank[questionNumbers].answerText;
//                       // if (rightAnswer == false) {
//                       //   print('You Got the answer');
//                       // } else {
//                       //   print('Failed');
//                       // }
//                       // setState(() {
//                       //   quizBrainn.nextQuestion();
//                       //   // storeKeeper.add(
//                       //   //   Icon(
//                       //   //     Icons.check,
//                       //   //     color: Colors.green,
//                       //   //   ),
//                       //   // );
//                       // });
//                     },
//                     child: Text(
//                       'False',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: storeKeepers,
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
