import 'package:appwrite/models.dart';
import 'package:chatapp/constants/string_constants.dart';
import 'package:chatapp/routes/chats.dart';
import 'package:chatapp/routes/friends.dart';
import 'package:chatapp/routes/profile.dart';
import 'package:chatapp/routes/status.dart';
import 'package:chatapp/services/api_server.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'login_page.dart';

class CustomBottomAppBar extends StatefulWidget {
  final User user;
  const CustomBottomAppBar({Key? key, required this.user}) : super(key: key);

  @override
  State<CustomBottomAppBar> createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  int currentIndex = 0;
  List<Widget> routes = const [
    ChatScreen(),
    Status(),
    Friends(),
    Profile(),
  ];
  List<String> title = const [
    AppStrings.chats,
    AppStrings.status,
    AppStrings.friends,
    AppStrings.profile,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title[currentIndex],
        ),
        centerTitle: true,
      ),
      body: routes[currentIndex],
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30.r,
                  ),
                  ListTile(
                    title: Text(widget.user.name),
                    subtitle: Text(widget.user.email),
                    trailing: IconButton(
                      onPressed: () async {
                        await APIServer.instance.logout();
                        Navigator.pushReplacementNamed(
                          context,
                          LoginPage.routeName,
                        );
                      },
                      icon: const Icon(FontAwesomeIcons.signOutAlt),
                    ),
                    contentPadding: const EdgeInsets.only(
                      left: 4,
                      right: 8,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text(AppStrings.chats),
              onTap: () => setState(
                () {
                  currentIndex = 0;
                  Navigator.pop(context);
                },
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text(AppStrings.status),
              onTap: () => setState(
                () {
                  currentIndex = 1;
                  Navigator.pop(context);
                },
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text(AppStrings.friends),
              onTap: () => setState(
                () {
                  currentIndex = 2;
                  Navigator.pop(context);
                },
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text(AppStrings.profile),
              onTap: () => setState(
                () {
                  currentIndex = 3;
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
