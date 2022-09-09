import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moviesapp/components/masking_image.dart';

import '../components/search_field_widget.dart';
import '../constant.dart';
import '../models/movie.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWeight = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Constants.kBlackColor,
      extendBody: true,
      body: SizedBox(
        height: screenHight,
        child: Stack(children: [
          Positioned(
            top: -100,
            left: -100,
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Constants.kGreenColor.withOpacity(0.5),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHight * 0.4,
            right: -88,
            child: Container(
              height: 166,
              width: 166,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Constants.kPinkColor.withOpacity(0.5),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                child: Container(
                  height: 166,
                  width: 166,
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -100,
            left: -100,
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Constants.kCyanColor.withOpacity(0.5),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          SafeArea(
              bottom: false,
              child: ListView(
                primary: true,
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    "What would you\nlike to watch?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Constants.kWhiteColor,
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const SearchFieldWidget(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                  const SizedBox(
                    height: 39,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "New movies",
                      style:
                          TextStyle(fontSize: 17, color: Constants.kWhiteColor),
                    ),
                  ),
                  const SizedBox(
                    height: 37,
                  ),
                  SizedBox(
                    height: 160,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: newMovies.length,
                        itemBuilder: ((context, index) {
                          String mask;
                          if (index == 0) {
                            mask = Constants.kMaskFirstIndex;
                          } else if (index == newMovies.length) {
                            mask = Constants.kMaskLastIndex;
                          } else {
                            mask = Constants.kMaskCenter;
                          }
                          return GestureDetector(
                            child: Container(
                              margin:
                                  EdgeInsets.only(left: index == 0 ? 20 : 0),
                              height: 160,
                              width: 142,
                              child: MaskedImage(
                                asset: newMovies[index].moviePoster,
                                mask: mask,
                              ),
                            ),
                          );
                        })),
                  ),
                  const SizedBox(
                    height: 38,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Upcomming movies",
                      style:
                          TextStyle(fontSize: 17, color: Constants.kWhiteColor),
                    ),
                  ),
                  const SizedBox(
                    height: 37,
                  ),
                  SizedBox(
                    height: 160,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: newMovies.length,
                        itemBuilder: ((context, index) {
                          String mask;
                          if (index == 0) {
                            mask = Constants.kMaskFirstIndex;
                          } else if (index == newMovies.length) {
                            mask = Constants.kMaskLastIndex;
                          } else {
                            mask = Constants.kMaskCenter;
                          }
                          return GestureDetector(
                            child: Container(
                              margin:
                                  EdgeInsets.only(left: index == 0 ? 20 : 0),
                              height: 160,
                              width: 142,
                              child: MaskedImage(
                                asset: upcomingMovies[index].moviePoster,
                                mask: mask,
                              ),
                            ),
                          );
                        })),
                  ),
                  const SizedBox(
                    height: 16,
                  )
                ],
              ))
        ]),
      ),
    );
  }
}
