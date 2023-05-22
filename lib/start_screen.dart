// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

const startAlignment = Alignment.topCenter;
const endAlignmnet = Alignment.bottomCenter;

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(61, 100, 10, 123),
            Color.fromARGB(242, 156, 26, 189),
          ],
          begin: startAlignment,
          end: endAlignmnet,
        ),
      ),
      child: const Center(
        child: null,
      ),
    );
  }
}

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);
  @override
  final Size preferredSize; // default is 56.0

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Quiz App'),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 178, 118, 188),
    );
  }
}
