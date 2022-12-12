import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'assets/profile.png',
          height: 50,
          width: 50,
        ),
        Text(
          'Puzzels',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        Image.asset(
          'assets/settings.png',
        ),
      ],
    );
  }
}
