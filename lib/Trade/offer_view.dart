import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:scry/Trade/Offer_Model/offer_model.dart';

class OfferView extends StatelessWidget {
  const OfferView({super.key, required this.offer});

  final OfferModel offer;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent, title: const Text('Trade Offer')),
      body: Column(
        children: [
          Row(children: [
            Flexible(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 8.0, right: 8, top: 8),
                        child: CircleAvatar(
                          radius: 27,
                          child: FutureBuilder(
                            //method to be waiting for in the future
                            future: FirebaseFirestore.instance
                                .collection('users')
                                .doc(offer.recipientUserID)
                                .get(),
                            builder: (_, snapshot) {
                              //if done show data,
                              if (snapshot.connectionState ==
                                  ConnectionState.done) {
                                if (snapshot.hasData && snapshot.data != null) {
                                  final doc = snapshot.data!.data();
                                  String imageUrl =
                                      doc?['profilePicture'] ?? '';
                                  return imageUrl == ''
                                      ? const CircleAvatar(
                                          radius: 25,
                                          child: Icon(Icons.person),
                                        )
                                      : CircleAvatar(
                                          radius: 25,
                                          backgroundImage: NetworkImage(
                                              doc!['profilePicture']),
                                        );
                                } else {
                                  return const CircleAvatar(
                                    radius: 25,
                                    child: Icon(Icons.person),
                                  );
                                }
                              } else {
                                //if the process is not finished then show the indicator process
                                return const Center(
                                    child: CircularProgressIndicator());
                              }
                            },
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            offer.recipientName,
                            style: theme.textTheme.titleMedium!
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'City, State',
                            style: theme.textTheme.titleSmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: offer.offeredCards.first.imageUris?.normal !=
                                null
                            ? Image.network(
                                offer.offeredCards.first.imageUris?.normal ??
                                    '',
                              )
                            : const Icon(Icons.photo)),
                  ),
                ],
              ),
            ),
            const Icon(Icons.swap_horiz),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: offer.availableCards.first.imageUris?.normal != null
                        ? Image.network(
                            offer.availableCards.first.imageUris?.normal ?? '',
                            fit: BoxFit.fitWidth,
                          )
                        : const Icon(Icons.photo)),
              ),
            )
          ]),
          Padding(padding: const EdgeInsets.all(8), child: Text(offer.details)),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: DefaultTextStyle(
                  style: theme.textTheme.titleMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                  child: RichText(
                    text: TextSpan(
                        style: theme.textTheme.titleMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                        text: offer.offeringUserName,
                        children: [
                          const TextSpan(
                              text: ' wants to trade',
                              style: TextStyle(fontWeight: FontWeight.normal)),
                          TextSpan(text: ' ${offer.offeredCards.first.name}'),
                          const TextSpan(
                              text: ' for your',
                              style: TextStyle(fontWeight: FontWeight.normal)),
                          TextSpan(
                              text: ' ${offer.availableCards.first.name}',
                              style: const TextStyle(fontWeight: FontWeight.bold)),
                        ]),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
