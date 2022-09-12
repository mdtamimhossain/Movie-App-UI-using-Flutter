import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black,
              Color(0xFF19191b),
            ],
          ),
        ),
        child: Stack(children: [
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: screenHeight * 0.5,
              width: screenWidth,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/movie-posters/img-eternals.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.05,
            left: 0,
            right: 0,
            child: const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21)),
          )
        ]),
      ),
    );
  }
}
