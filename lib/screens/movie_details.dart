import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moviesapp/components/masking_image.dart';

import '../constant.dart';

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
            top: 10,
            left: 0,
            child: Container(
              height: screenHeight * 0.5,
              width: screenWidth,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/movie-posters/img-eternals.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.05,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 44,
                      width: 44,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(width: 3, color: Colors.white)),
                      child: SvgPicture.asset("assets/svg/icon-back.svg"),
                    ),
                    Container(
                      height: 44,
                      width: 44,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(width: 3, color: Colors.white)),
                      child: SvgPicture.asset("assets/svg/icon-menu.svg"),
                    )
                  ]),
            ),
          ),
          Positioned(
            right: 9,
            top: screenHeight * 0.36,
            child: Container(
              height: 64,
              width: 64,
              padding: const EdgeInsets.all(4),
              margin: const EdgeInsets.only(top: 40),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Constants.kPinkColor.withOpacity(0.2),
                    Constants.kGreenColor.withOpacity(0.2),
                  ],
                ),
              ),
              child: Container(
                height: 60,
                width: 60,
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Constants.kPinkColor,
                      Constants.kGreenColor,
                    ],
                  ),
                ),
                child: RawMaterialButton(
                  onPressed: () {},
                  shape: const CircleBorder(),
                  fillColor: Color(0xff404c57),
                  child: SvgPicture.asset(Constants.kIconPlay),
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.53,
            right: 0,
            left: 0,
            child: Container(
              height: 241,
              width: 241,
              child: Column(
                children: [
                  const Text(
                    "2021•Action-Adventure-Fantasy•2h36m",
                    style: TextStyle(color: Colors.white60),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  RatingBar.builder(
                    itemSize: 18,
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Constants.kYellowColor,
                    ),
                    onRatingUpdate: (rating) {
                      debugPrint(rating.toString());
                    },
                    unratedColor: Constants.kWhiteColor,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "The saga of the Eternals, a race of\nimmortal beings who lived on Earth\nand shaped its history and\ncivilizations.",
                    style: TextStyle(color: Colors.white60, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 2,
                    width: screenWidth * 0.8,
                    color: Constants.kWhiteColor.withOpacity(0.15),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.76,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Row(children: [
                    Text(
                      "CAST",
                      style: TextStyle(
                        color: Constants.kWhiteColor.withOpacity(0.85),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ]),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.orange,
                        minRadius: 16,
                        maxRadius: screenWidth <= 375 ? 24 : 30,
                        backgroundImage: const NetworkImage(
                          'https://m.media-amazon.com/images/M/MV5BODg3MzYwMjE4N15BMl5BanBnXkFtZTcwMjU5NzAzNw@@._V1_.jpg',
                        ),
                      ),
                      Expanded(
                          child: Container(
                        constraints: const BoxConstraints(
                          maxHeight: 52,
                          maxWidth: 112,
                        ),
                        transform: Matrix4.translationValues(-6, 0, 0),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: const [
                            MaskedImage(
                              asset: Constants.kMaskCast,
                              mask: Constants.kMaskCast,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 16,
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Angelina\nJolie",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.white),
                                  maxLines: 2,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                      CircleAvatar(
                        backgroundColor: Colors.orange,
                        minRadius: 16,
                        maxRadius: screenWidth <= 375 ? 24 : 30,
                        backgroundImage: const NetworkImage(
                          'https://m.media-amazon.com/images/M/MV5BODg3MzYwMjE4N15BMl5BanBnXkFtZTcwMjU5NzAzNw@@._V1_.jpg',
                        ),
                      ),
                      Expanded(
                          child: Container(
                        constraints: const BoxConstraints(
                          maxHeight: 52,
                          maxWidth: 112,
                        ),
                        transform: Matrix4.translationValues(-6, 0, 0),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: const [
                            MaskedImage(
                              asset: Constants.kMaskCast,
                              mask: Constants.kMaskCast,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 16,
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Angelina\nJolie",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.white),
                                  maxLines: 2,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.orange,
                        minRadius: 16,
                        maxRadius: screenWidth <= 375 ? 24 : 30,
                        backgroundImage: const NetworkImage(
                          'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSwRAJ3N8uoXt1hsjyDhL2PhH-9tfIr6xUckGyrxR6fAtc5LWFS',
                        ),
                      ),
                      Expanded(
                          child: Container(
                        constraints: const BoxConstraints(
                          maxHeight: 52,
                          maxWidth: 112,
                        ),
                        transform: Matrix4.translationValues(-6, 0, 0),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: const [
                            MaskedImage(
                              asset: Constants.kMaskCast,
                              mask: Constants.kMaskCast,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 16,
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Angelina\nJolie",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.white),
                                  maxLines: 2,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                      CircleAvatar(
                        backgroundColor: Colors.orange,
                        minRadius: 16,
                        maxRadius: screenWidth <= 375 ? 24 : 30,
                        backgroundImage: const NetworkImage(
                          'https://m.media-amazon.com/images/M/MV5BODg3MzYwMjE4N15BMl5BanBnXkFtZTcwMjU5NzAzNw@@._V1_.jpg',
                        ),
                      ),
                      Expanded(
                          child: Container(
                        constraints: const BoxConstraints(
                          maxHeight: 52,
                          maxWidth: 112,
                        ),
                        transform: Matrix4.translationValues(-6, 0, 0),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: const [
                            MaskedImage(
                              asset: Constants.kMaskCast,
                              mask: Constants.kMaskCast,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 16,
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Angelina\nJolie",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.white),
                                  maxLines: 2,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                    ],
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
