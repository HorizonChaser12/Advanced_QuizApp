import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/quiz-logo.png',
            height: 300,
            width: 300,
            color: const Color.fromARGB(137, 235, 234, 234),
          ),
          // Opacity(
          //   opacity: 0.7,
          //   child: Image.asset(
          //     'assets/quiz-logo.png',
          //     width: 200,
          //   ),
          // ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Learn Flutter in the Best Way!",
            style: TextStyle(
                color: Color.fromARGB(255, 222, 194, 234),
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          const SizedBox(
            height: 25,
          ),
          OutlinedButton.icon(
              onPressed: () {
                startQuiz();
              },
              // onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                  // padding: const EdgeInsets.only(top: 20),
                  backgroundColor: const Color.fromARGB(255, 82, 49, 149),
                  foregroundColor: const Color.fromARGB(255, 187, 111, 204),
                  textStyle: const TextStyle(fontSize: 25)),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text(
                "Start Quiz!",
                style: TextStyle(
                    color: Color.fromARGB(255, 222, 194, 234), fontSize: 25),
              ))
        ],
      ),
    );
  }
}

// class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
//   const MyAppBar({Key? key})
//       : preferredSize = const Size.fromHeight(kToolbarHeight),
//         super(key: key);
//   @override
//   final Size preferredSize; // default is 56.0

//   @override
//   // ignore: library_private_types_in_public_api
//   _CustomAppBarState createState() => _CustomAppBarState();
// }

// class _CustomAppBarState extends State<MyAppBar> {
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       title: const Text('Quiz App'),
//       centerTitle: true,
//       backgroundColor: const Color.fromARGB(255, 178, 118, 188),
//     );
//   }
// }
