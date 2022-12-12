import 'package:assignment/utils/colors.dart';
import 'package:flutter/material.dart';

import '../widgets/message_tile.dart';
import '../widgets/profile_card.dart';
import '../widgets/search.dart';
import '../widgets/seperator.dart';
import '../widgets/top_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: bgColor,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 37,
                      ),
                      child: TopBar(),
                    ),
                    SizedBox(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          ProfileCard(
                              index: 1,
                              isLikes: true,
                              isVerified: false,
                              title: "Likes",
                              totlLikes: "20"),
                          ProfileCard(
                              index: 2,
                              isLikes: false,
                              isVerified: true,
                              title: "Tony",
                              totlLikes: "0"),
                          ProfileCard(
                              index: 3,
                              isLikes: false,
                              isVerified: true,
                              title: "James",
                              totlLikes: "0"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                          ),
                        ),
                      ),
                      const Positioned(
                        right: 28,
                        left: 28,
                        top: -25,
                        child: SearchBox(),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const MessageTile(
                    isTyping: false,
                    imageUrl: 'assets/jordan.png',
                    isMessageSeen: false,
                    isVerified: true,
                    title: "Jordan",
                    totalMessages: "1",
                    message: "Hii!",
                  ),
                  const Seperator(),
                  const MessageTile(
                    isTyping: false,
                    imageUrl: 'assets/tim.png',
                    isMessageSeen: true,
                    isVerified: true,
                    title: "Tim",
                    totalMessages: "0",
                    message: "Hii!",
                  ),
                  const Seperator(),
                  const MessageTile(
                    isTyping: true,
                    imageUrl: 'assets/james.png',
                    isMessageSeen: false,
                    isVerified: false,
                    title: "James",
                    totalMessages: "9+",
                    message: "Typing...",
                  ),
                  const Seperator(),
                  const Spacer(),
                  Container(
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
