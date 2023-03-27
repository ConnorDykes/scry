import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        textTheme: GoogleFonts.latoTextTheme(),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          'Scry',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
                textAlign: TextAlign.center,
                'HomePage: This is example text that I will use to determin isf the font I have selected is acceptbla e in this app, IF not I will try to find a baeter font'),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
