import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'button.dart';
import 'home.dart';

class ShowScreen extends StatefulWidget {
  const ShowScreen({super.key});
  @override
  State<ShowScreen> createState() => _ShowScreenState();
}

class _ShowScreenState extends State<ShowScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/mountains.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(130, 70, 130, 00),
            child: Column(
              children: [
                const Text(
                  'HELLO\nUSER',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                    color: Colors.white,
                    letterSpacing: 20,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0, // shadow blur
                        color: Colors.black, // shadow color
                        offset: Offset(2.0, 2.0),
                      ),
                    ],
                    wordSpacing: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Icon(
                  Icons.train_rounded,
                  size: 60,
                  color: Colors.white,
                ),
                SimpleButton(
                  buttonText: const Text('DIVE IN'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: const Home(),
                            type: PageTransitionType.rightToLeftWithFade));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}