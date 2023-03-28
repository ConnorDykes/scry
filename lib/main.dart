import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scry/CardRepo/card_repository.dart';
import 'package:scry/card_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        dividerColor: Colors.grey[400],
        textTheme: GoogleFonts.rubikTextTheme(),
        colorScheme: ColorScheme(
            surface: Colors.white,
            onSurface: Colors.black,
            background: CupertinoColors.lightBackgroundGray,
            onBackground: Colors.black,
            onPrimary: Colors.white,
            onSecondary: Colors.white,
            onError: Colors.white,
            brightness: Brightness.light,
            primary: Colors.green,
            secondary: Colors.orange,
            error: Colors.red),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<CardModel>? cards = [];
  var loaded = false;
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    // getCards();
    super.initState();
  }

  // getCards() async {
  //   cards = await CardRepository().searchNamed();
  //   if (cards != null) {
  //     setState(() {
  //       loaded = true;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: Text(
            'Scry',
          ),
        ),
        body: Visibility(
          visible: loaded,
          child: Column(
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
                      hintText: "Search Card Name",
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

                      return Card(
                        child: ListTile(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return Dialog(
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(14),
                                        child: Image.network(imageNormal)),
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
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
