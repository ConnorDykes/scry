import 'package:flutter/material.dart';
import 'package:scry/Widgets/our_textfield.dart';

class CreateNewGameView extends StatelessWidget {
  const CreateNewGameView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Text('Create Game'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.close))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text('Title'),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: OurTextfield(onChanged: () {}),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text('Description'),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: OurTextfield(minLines: 5, onChanged: () {}),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text('Location'),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: OurTextfield(onChanged: () {}),
          ),
          Container(
            decoration: BoxDecoration(
                color: theme.cardColor,
                borderRadius: BorderRadius.circular(14)),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text('Cost'),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          //* add bloc function to decrease amount if not 0
                        },
                        child: Icon(Icons.remove_circle_outline)),
                    Text("Free"),
                    TextButton(
                        onPressed: () {
                          //* add bloc function to decrease amount if not 0
                        },
                        child: Icon(Icons.add_circle_outline_rounded))
                  ],
                ),
              ),
            ]),
          )
        ]),
      ),
    );
  }
}
