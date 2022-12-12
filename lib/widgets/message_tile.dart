import 'package:flutter/material.dart';

import '../utils/colors.dart';

class MessageTile extends StatelessWidget {
  final bool isVerified;
  final bool isMessageSeen;
  final String imageUrl;
  final String title;
  final String message;
  final String totalMessages;
  final bool isTyping;
  const MessageTile({
    Key? key,
    required this.isTyping,
    required this.isVerified,
    required this.isMessageSeen,
    required this.imageUrl,
    required this.title,
    required this.message,
    required this.totalMessages,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(imageUrl),
      title: isVerified
          ? Row(
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        color:
                            isMessageSeen ? messaageSeenColor : personNameColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                ),
                Image.asset(
                  'assets/verified.png',
                  height: 16.7,
                  width: 16.7,
                ),
              ],
            )
          : Text(
              title,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    color: personNameColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
            ),
      subtitle: Text(
        message,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: isMessageSeen
                  ? messaageSeenColor
                  : (isTyping ? titleColor : null),
            ),
      ),
      trailing: isMessageSeen
          ? Text(
              '13:10',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.w400,
                    color: isMessageSeen ? messaageSeenColor : null,
                  ),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '13:10',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: isMessageSeen ? messaageSeenColor : null,
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                  ),
                  child: Container(
                    height: 15,
                    width: 15,
                    decoration: const BoxDecoration(
                      color: messageBubbleColor,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        totalMessages,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
