import 'package:flutter/material.dart';
import 'package:scry/Messages/Messages_Model/message_model.dart';
import 'package:scry/card_dialog.dart';
import 'package:scry/card_model.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget(
      {super.key,
      required this.message,
      this.userName,
      this.color = Colors.green,
      this.isCurrentUser = true});

  final String? userName;
  final MessageModel message;
  final Color color;
  final bool isCurrentUser;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    debugPrint(message.card.id);

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
              if (message.card.id == null) ...{
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
                  color:
                      isCurrentUser ? theme.colorScheme.primary : Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      message.message,
                      maxLines: null,
                      style: theme.textTheme.titleMedium!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                )
              } else ...{
                GestureDetector(
                  onTap: () => showDialog(
                    context: context,
                    builder: (context) => CardDialog(card: message.card),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Container(
                      height: 150,
                      child: Image.network(message.card.imageUris?.small ?? ''),
                    ),
                  ),
                )
              }
            ],
          ),
        ),
      ],
    );
  }
}
