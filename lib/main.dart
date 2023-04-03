import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scry/Create_Trade/bloc/create_trade_bloc.dart';
import 'package:scry/Create_Trade/create_trade_view.dart';
import 'package:scry/Home/bloc/home_bloc.dart';
import 'package:scry/Home/home_view.dart';
import 'package:scry/Sign_In/sign_in_view.dart';
import 'package:scry/firebase_options.dart';

import 'Sign_Up/sign_up_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeBloc(),
        ),
        BlocProvider(
          create: (context) => CreateTradeBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Scry',
        initialRoute: '/',
        routes: {
          '/CreateTrade': (context) => CreateTradeView(),
          '/SignIn': (context) => SignInView(),
          '/SignUp': (context) => SignUpView(),
        },
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
              secondary: Colors.lightGreen[300]!,
              error: Colors.red),
          useMaterial3: true,
        ),
        home: HomeView(),
      ),
    );
  }
}
