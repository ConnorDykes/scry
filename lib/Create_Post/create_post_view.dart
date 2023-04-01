import 'package:flutter/material.dart';
import 'package:scry/Card_Repo/card_repository.dart';
import 'package:scry/card_model.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({
    super.key,
  });

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  List<CardModel>? cards = [];
  var loaded = false;
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          backgroundColor: theme.scaffoldBackgroundColor,
          title: Text(
            'Scry',
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) async {
                  var response =
                      await CardRepository().searchNamed(name: value);
                  if (response != null) {
                    setState(() {
                      loaded = true;
                      cards = response;
                    });
                  }
                },
                controller: searchController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 8),
                    fillColor: theme.cardColor,
                    filled: true,
                    label: Text("Search Card Name"),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: theme.primaryColor),
                        borderRadius: BorderRadius.circular(15)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            Container(
              color: Colors.grey[400],
              constraints: BoxConstraints(maxHeight: 1),
            ),
            Visibility(
              visible: loaded,
              child: Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: cards!.length,
                  itemBuilder: (context, index) {
                    final card = cards![index];
                    final imageSmall = card.imageUris?.small ?? '';
                    final imageNormal = card.imageUris?.normal ?? '';

                    return ListTile(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
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
                                            icon: Icon(Icons.close))
                                      ],
                                    ),
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(14),
                                        child: Image.network(imageNormal)),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: FilledButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text('Select')),
                                    )
                                  ],
                                ),
                              );
                            });
                      },
                      shape: RoundedRectangleBorder(),
                      leading: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: imageSmall == ''
                            ? Icon(Icons.photo)
                            : Image.network(
                                imageSmall,
                              ),
                      ),
                      title: Text(card.name ?? ''),
                      trailing: Icon(Icons.chevron_right_rounded),
                    );
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
