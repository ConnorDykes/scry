import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget(
      {super.key,
      required this.message,
      this.userName,
      this.color = Colors.green,
      this.isCurrentUser = true});

  final String? userName;
  final String message;
  final Color color;
  final bool isCurrentUser;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment:
          isCurrentUser ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Flexible(
          child: Column(
            crossAxisAlignment: isCurrentUser
                ? CrossAxisAlignment.end
                : CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              userName != null ? Text(userName!) : SizedBox.shrink(),
              Card(
                shape: isCurrentUser
                    ? const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(0),
                      ))
                    : const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      )),
                color: isCurrentUser ? theme.colorScheme.primary : Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    message,
                    maxLines: null,
                    style: theme.textTheme.titleMedium!
                        .copyWith(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
