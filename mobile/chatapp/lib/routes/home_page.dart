import 'package:chatapp/blocs/authbloc/auth_bloc.dart';
import 'package:chatapp/blocs/internetbloc/internetchecker_bloc.dart';
import 'package:chatapp/routes/bottom_app_bar_home.dart';
import 'package:chatapp/widgets/email_not_verified.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  static const String routeName = 'HomePage';
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  void onTap() {
    final state = BlocProvider.of<InternetCheckerBloc>(context).state;
    if (state.isConnected) {
      context.read<AuthBloc>().add(EmailVerificationCheck());
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No Internet Connection')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthNoInternet) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.isConnected ? 'Online' : 'Offline'),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is EmailVerifyLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is EmailNotVerified ||
              state.user['emailVerification'] == false) {
            return EmailNotVerified(
              onTap: onTap,
            );
          }
          if (state.user['emailVerification']) {
            return const CustomBottomAppBar();
          }
          return const CustomBottomAppBar();
        },
      ),
    );
  }
}
