import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:moviesapp/constant.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({Key? key, required this.padding}) : super(key: key);
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        height: 36,
        decoration: BoxDecoration(
          color: Constants.kWhiteColor.withOpacity(0.12),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(children: [
          const SizedBox(
            width: 8,
          ),
          SvgPicture.asset(Constants.kIconSearch),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: TextField(
              style: TextStyle(
                color: Constants.kWhiteColor.withOpacity(0.6),
                fontSize: 17,
                letterSpacing: -0.41,
              ),
              decoration: InputDecoration(
                  hintText: "search",
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: Constants.kWhiteColor.withOpacity(0.6),
                    fontSize: 17,
                    letterSpacing: -0.41,
                  )),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          SvgPicture.asset(Constants.kIconMic),
          const SizedBox(
            width: 8,
          ),
        ]),
      ),
    );
  }
}