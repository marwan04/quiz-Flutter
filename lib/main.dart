import 'package:flutter/material.dart';
import 'package:project2/quiz.dart';
 void main(){
  runApp(
    const Quiz()
  );
}

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         body: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [Colors.deepPurple, Colors.black],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomCenter,
//             ),
//           ),
//           child: Center(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Image.asset('me/quiz-logo.png', width: 300),
//                 const SizedBox(height: 20),
//                 const Text(
//                   'Learn flutter the fun way!',
//                   style: TextStyle(color: Colors.white, fontSize: 20),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {},
//                   child: const Text('Start Quiz'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
// }
