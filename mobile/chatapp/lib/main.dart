import 'package:appwrite/appwrite.dart';
import 'package:chatapp/blocs/authbloc/auth_bloc.dart';
import 'package:chatapp/blocs/internetbloc/internetchecker_bloc.dart';
import 'package:chatapp/blocs/sessionbloc/session_bloc.dart';
import 'package:chatapp/constants/color_constants.dart';
import 'package:chatapp/routes/home_page.dart';
import 'package:chatapp/routes/login_page.dart';
import 'package:chatapp/routes/signup_page.dart';
import 'package:chatapp/services/api_server.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  late Map<String, dynamic> user;
  bool hasConnection;
  final Connectivity _connectivity = Connectivity();

  final isConnected = await _connectivity.checkConnectivity();
  if (isConnected == ConnectivityResult.none) {
    hasConnection = false;
  } else {
    hasConnection = await InternetConnectionChecker().hasConnection;
  }
  try {
    final response = await APIServer.instance.getLoggedInUser();
    user = response.toMap();
  } on AppwriteException catch (_) {
    user = {};
  }
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (ctx) => InternetCheckerBloc(
            connectivity: _connectivity,
            initialVal: hasConnection,
          ),
        ),
        BlocProvider(
          create: (ctx) => AuthBloc(
            user: user,
            internetCheckerbloc: ctx.read<InternetCheckerBloc>(),
          ),
        ),
        BlocProvider(
          create: (ctx) => SessionBloc(),
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
          theme: ThemeData().copyWith(
            colorScheme: const ColorScheme.light().copyWith(
              secondary: AppColors.accent,
              primary: AppColors.primary,
              onPrimary: AppColors.onPrimary,
            ),
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
