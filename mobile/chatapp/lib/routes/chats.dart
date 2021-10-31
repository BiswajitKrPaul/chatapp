import 'package:chatapp/routes/login_page.dart';
import 'package:chatapp/services/api_server.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () async {
          await APIServer.instance.logout();
          Navigator.pushReplacementNamed(context, LoginPage.routeName);
        },
        child: const Text(
          'Logout',
        ),
      ),
    );
  }
}
