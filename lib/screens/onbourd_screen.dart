import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moviesapp/components/customOutline.dart';
import 'package:moviesapp/constant.dart';

class OnbourdScreen extends StatelessWidget {
  const OnbourdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWeight = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Constants.kBlackColor,
      extendBody: true,
      body: SizedBox(
        height: screenHight,
        width: screenWeight,
        child: Stack(children: [
          Positioned(
            top: screenHight * 0.1,
            left: -88,
            child: Container(
              height: 166,
              width: 166,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Constants.kPinkColor,
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
            top: screenHight * 0.3,
            right: -100,
            child: Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Constants.kGreenColor,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenHight * 0.07,
                ),
                CustomOutline(
                  strokeWidth: 4,
                  radius: screenWeight * 0.8,
                  width: screenWeight * 0.8,
                  height: screenWeight * 0.8,
                  padding: const EdgeInsets.all(4),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Constants.kPinkColor,
                        Constants.kPinkColor.withOpacity(0),
                        Constants.kGreenColor,
                        Constants.kGreenColor.withOpacity(0.1),
                      ],
                      stops: const [
                        0.2,
                        0.4,
                        0.6,
                        1
                      ]),
                  child: Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          alignment: Alignment.bottomLeft,
                          fit: BoxFit.cover,
                          image: AssetImage("assets/img-onboarding.png"),
                        )),
                  ),
                ),
                SizedBox(
                  height: screenHight * 0.09,
                ),
                Text(
                  "Watch movie in\nVartual Reality",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: screenHight <= 667 ? 19 : 35,
                    color: Constants.kWhiteColor.withOpacity(0.87),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: screenHight * 0.05,
                ),
                Text(
                  "Download and watch ofline\nwherever you are",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: screenHight <= 667 ? 13 : 17,
                    color: Constants.kWhiteColor.withOpacity(0.75),
                  ),
                ),
                SizedBox(
                  height: screenHight * 0.03,
                ),
                CustomOutline(
                  strokeWidth: 3,
                  radius: 20,
                  width: 160,
                  height: 38,
                  padding: const EdgeInsets.all(3),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Constants.kPinkColor,
                      Constants.kGreenColor,
                    ],
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Constants.kPinkColor.withOpacity(0.5),
                          Constants.kGreenColor.withOpacity(0.5),
                        ],
                      ),
                    ),
                    child: const Text(
                      "sign up",
                      style: TextStyle(
                        color: Constants.kWhiteColor,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) {
                    return Container(
                      height: 7,
                      width: 7,
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: index == 0
                              ? Constants.kGreenColor
                              : Constants.kWhiteColor.withOpacity(.20)),
                    );
                  }),
                ),
                SizedBox(
                  height: screenHight * 0.02,
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
