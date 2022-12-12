import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final int index;
  final String title;
  final bool isVerified;
  final bool isLikes;
  final String totlLikes;
  const ProfileCard({
    required this.totlLikes,
    required this.index,
    Key? key,
    required this.title,
    required this.isVerified,
    required this.isLikes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Container(
        height: 98.3,
        width: 85,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/status${index}.png',
            ),
          ),
          // color: Colors.red,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              bottom: -8,
              left: 12.5,
              child: Container(
                height: 16,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: isVerified
                      ? Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              children: [
                                Text(
                                  title,
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                Image.asset(
                                  'assets/verified.png',
                                  height: 16.7,
                                  width: 16.7,
                                ),
                              ],
                            ),
                          ),
                        )
                      : Text(
                          title,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                ),
              ),
            ),
            isLikes
                ? Positioned(
                    bottom: 14,
                    left: 28.3,
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/heart.png",
                          width: 25,
                          height: 22.5,
                        ),
                        const SizedBox(
                          height: 6.87,
                        ),
                        Text(
                          totlLikes,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              ),
                        ),
                      ],
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
