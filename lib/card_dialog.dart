import 'package:flutter/material.dart';
import 'package:scry/card_model.dart';

class CardDialog extends StatelessWidget {
  const CardDialog({super.key, required this.card});

  final CardModel card;

  @override
  Widget build(BuildContext context) {
    final imageNormal = card.imageUris?.normal ?? '';
    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton.filled(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close))
            ],
          ),
          ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.network(imageNormal)),
        ],
      ),
    );
  }
}
