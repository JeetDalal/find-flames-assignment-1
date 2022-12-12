import 'package:flutter/material.dart';

import '../utils/colors.dart';

class Seperator extends StatelessWidget {
  const Seperator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: Divider(
        color: horizontalLineColor,
        height: 5,
        thickness: 2,
      ),
    );
  }
}
