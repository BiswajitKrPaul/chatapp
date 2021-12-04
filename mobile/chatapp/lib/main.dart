import 'package:appwrite/appwrite.dart';
import 'package:chatapp/blocs/authbloc/auth_bloc.dart';
import 'package:chatapp/blocs/sessionbloc/sessionlist_bloc.dart';
import 'package:chatapp/routes/home_page.dart';
import 'package:chatapp/routes/login_page.dart';
import 'package:chatapp/routes/signup_page.dart';
import 'package:chatapp/services/api_server.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Map<String, dynamic> user;
  try {
    final response = await APIServer.instance.getLoggedInUser();
    user = response.toMap();
  } on AppwriteException catch (_) {
    //debugPrint(err.message);
    user = {};
  }
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (ctx) => AuthBloc(user: user),
        ),
        BlocProvider(
          create: (ctx) => SessionlistBloc(),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final Map<String, dynamic> _currentUser;

  @override
  void initState() {
    super.initState();
    _currentUser = BlocProvider.of<AuthBloc>(context).state.user;
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390.0, 844.0),
      builder: () {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Chat App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: _currentUser.isEmpty ? const LoginPage() : const HomePage(),
          routes: {
            LoginPage.routeName: (ctx) => const LoginPage(),
            HomePage.routeName: (ctx) => const HomePage(),
            SignUpPage.routeName: (ctx) => const SignUpPage(),
          },
        );
      },
    );
  }
}
