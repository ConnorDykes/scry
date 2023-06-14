import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scry/AppBloc/bloc/app_bloc_bloc.dart';
import 'package:scry/Home/bloc/home_bloc.dart';
import 'package:scry/Home/home_view.dart';
import 'package:scry/Profile/bloc/profile_bloc.dart';
import 'package:scry/Profile/profile_view.dart';
import 'package:scry/Sign_In/bloc/sign_in_bloc.dart';
import 'package:scry/Sign_In/sign_in_view.dart';
import 'package:scry/Sign_Up/bloc/sign_up_bloc.dart';
import 'package:scry/Trade/Create_Trade/bloc/create_trade_bloc.dart';
import 'package:scry/Trade/Create_Trade/create_trade_view.dart';
import 'package:scry/firebase_options.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:showcaseview/showcaseview.dart';

import 'Sign_Up/sign_up_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

final iconKey = GlobalKey();
final messageKey = GlobalKey();
final playKey = GlobalKey();
final profileKey = GlobalKey();
final fabKey = GlobalKey();

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
          create: (context) => SignUpBloc(),
        ),
        BlocProvider(
          create: (context) => SignInBloc(),
        ),
        BlocProvider(
            create: (context) => AppBlocBloc()..add(AppBlocEvent.started())),
        BlocProvider(
          create: (context) => ProfileBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Scry',
        initialRoute: '/',
        routes: {
          '/CreateTrade': (context) => BlocProvider(
                create: (context) => CreateTradeBloc(),
                child: const CreateTradeView(),
              ),
          '/SignIn': (context) => const SignInView(),
          '/SignUp': (context) => const SignUpView(),
          '/Profile': (context) => const ProfileView(),
        },
        theme: ThemeData(
          dividerColor: Colors.grey[400],
          textTheme: GoogleFonts.rubikTextTheme(),
          cardTheme: const CardTheme(surfaceTintColor: Colors.transparent),
          cardColor: Colors.white,
          appBarTheme: AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle.light, // 2
          ),
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
        home: ShowCaseWidget(
          builder: Builder(builder: (context) => const HomeView()),
          onComplete: (_, key) {
            if (key == fabKey) {
              //  await SharedPreferences.getInstance();
            }
          },
        ),
      ),
    );
  }
}
