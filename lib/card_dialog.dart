import 'package:flutter/material.dart';
import 'package:scry/card_model.dart';
import 'package:url_launcher/url_launcher.dart';

class CardDialog extends StatelessWidget {
  const CardDialog({super.key, required this.card});

  final CardModel card;

  @override
  Widget build(BuildContext context) {
    Future<void> _launchUrl() async {
      final _url = Uri.parse(card.purchaseUris?.tcgplayer ?? '');
      if (!await launchUrl(_url)) {
        throw Exception('Could not launch $_url');
      }
    }

    debugPrint(card.prices?.toJson().toString() ?? "null");
    final theme = Theme.of(context);
    final imageNormal = card.imageUris?.normal ?? '';
    return SingleChildScrollView(
      child: Dialog(
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: theme.scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(14)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    Row(
                      children: [
                        Text(
                          'Price: ',
                        ),
                        Text(
                          ' \$ ${card.prices?.usd.toString() ?? "Unknown"}',
                          style: theme.textTheme.titleMedium,
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 1,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14)),
                                backgroundColor: Colors.white),
                            child: Text('TCGPlayer'),
                            onPressed: _launchUrl,
                          ),
                        )
                      ],
                    ),
                    Divider(),
                    Text(
                      'Legalities',
                      style: theme.textTheme.titleMedium,
                    ),
                    GridView.count(
                      primary: false,
                      childAspectRatio: 3,
                      // padding: const EdgeInsets.all(4),
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 4,
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Legality(
                                legal: card.legalities!.standard == "legal"),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text('Standard'),
                            )
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Legality(legal: card.legalities!.modern == "legal"),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text('Modern'),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Legality(
                                legal: card.legalities!.pioneer == "legal"),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text('Pioneer'),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Legality(legal: card.legalities!.legacy == "legal"),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text('Legacy'),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Legality(legal: card.legalities!.modern == "legal"),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text('Modern'),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Legality(
                                legal: card.legalities!.vintage == "legal"),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text('Vintage'),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Legality(
                                legal: card.legalities!.commander == "legal"),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text('Commander'),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Legality(
                                legal: card.legalities!.oathbreaker == "legal"),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text('Oathbreaker'),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Legality(
                                legal: card.legalities!.alchemy == "legal"),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text('Alchemy'),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Legality(
                                legal: card.legalities!.explorer == "legal"),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text('Explorer'),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Legality(legal: card.legalities!.brawl == "legal"),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text('Brawl'),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Legality(
                                legal: card.legalities!.historic == "legal"),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text('Historic'),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Legality(legal: card.legalities!.pauper == "legal"),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text('Pauper'),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Legality(legal: card.legalities!.penny == "legal"),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text('Penny'),
                            )
                          ],
                        )
                      ],
                    )
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Legality extends StatelessWidget {
  const Legality({super.key, required this.legal});

  final bool legal;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
        decoration: BoxDecoration(
            color: legal ? Colors.green : theme.disabledColor,
            borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: legal
              ? Text(
                  'Yes',
                  style: TextStyle(color: Colors.white),
                )
              : Text(
                  'No',
                  style: TextStyle(color: Colors.black),
                ),
        ));
  }
}
