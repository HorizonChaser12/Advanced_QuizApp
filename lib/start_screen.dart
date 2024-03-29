import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            color: const Color.fromARGB(187, 235, 234, 234),
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
          Text(
            "Learn Flutter in the Best Way!",
            style: GoogleFonts.montserrat(
                color: const Color.fromARGB(255, 222, 194, 234),
                fontSize: 24,
                fontWeight: FontWeight.bold),
            // style: TextStyle(
            //   color: Color.fromARGB(255, 222, 194, 234),
            //   fontSize: 25,
            //   fontWeight: FontWeight.bold
          ),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton.icon(
              onPressed: () {
                startQuiz();
              },
              style: OutlinedButton.styleFrom(
                  // padding: const EdgeInsets.only(top: 20),
                  backgroundColor: const Color.fromARGB(255, 60, 9, 108),
                  foregroundColor: const Color.fromARGB(255, 205, 180, 219),
                  textStyle: const TextStyle(fontSize: 25)),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text(
                "Start Quiz!",
                style: TextStyle(
                    color: Color.fromARGB(255, 205, 180, 219), fontSize: 25),
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
