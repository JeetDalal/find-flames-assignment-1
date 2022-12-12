import 'package:flutter/material.dart';

import '../utils/colors.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [bottomNavigationShadow],
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 55.91),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/home.png',
              ),
              Image.asset(
                'assets/globalsearch.png',
              ),
              Image.asset(
                'assets/calendaredit.png',
              ),
              Image.asset(
                'assets/messages3.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
