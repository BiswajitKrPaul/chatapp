import 'package:appwrite/models.dart';
import 'package:chatapp/blocs/authbloc/auth_bloc.dart';
import 'package:chatapp/constants/string_constants.dart';
import 'package:chatapp/routes/chats.dart';
import 'package:chatapp/routes/friends.dart';
import 'package:chatapp/routes/profile.dart';
import 'package:chatapp/routes/session_lists.dart';
import 'package:chatapp/routes/status.dart';
import 'package:chatapp/services/api_server.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'login_page.dart';

class CustomBottomAppBar extends StatefulWidget {
  const CustomBottomAppBar({Key? key}) : super(key: key);

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
    SessionLists(),
  ];
  List<String> title = const [
    AppStrings.chats,
    AppStrings.status,
    AppStrings.friends,
    AppStrings.profile,
    AppStrings.session,
  ];
  late final User user;

  @override
  void initState() {
    super.initState();
    final stateValue = BlocProvider.of<AuthBloc>(context).state;
    debugPrint(stateValue.user.toString());
    user = User.fromMap(stateValue.user);
  }

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
                    title: Text(user.name),
                    subtitle: Text(user.email),
                    trailing: IconButton(
                      onPressed: () async {
                        await APIServer.instance.logout();
                        Navigator.pushReplacementNamed(
                          context,
                          LoginPage.routeName,
                        );
                      },
                      icon: const Icon(Icons.logout),
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
              leading: const Icon(Icons.message),
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
              leading: const Icon(FontAwesomeIcons.stream),
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
              leading: const Icon(FontAwesomeIcons.userFriends),
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
              leading: const Icon(FontAwesomeIcons.userAlt),
              title: const Text(AppStrings.profile),
              onTap: () => setState(
                () {
                  currentIndex = 3;
                  Navigator.pop(context);
                },
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(FontAwesomeIcons.solidClock),
              title: const Text(AppStrings.session),
              onTap: () => setState(
                () {
                  currentIndex = 4;
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
