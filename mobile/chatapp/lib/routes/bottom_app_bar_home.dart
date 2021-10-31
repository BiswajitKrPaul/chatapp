import 'package:chatapp/constants/string_constants.dart';
import 'package:chatapp/routes/chats.dart';
import 'package:chatapp/routes/friends.dart';
import 'package:chatapp/routes/profile.dart';
import 'package:chatapp/routes/status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icons.dart';

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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (val) {
          setState(() {
            currentIndex = val;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              LineIcons.comments,
              size: 30.sp,
            ),
            label: AppStrings.chats,
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              LineIcons.heart,
              size: 30.sp,
            ),
            label: AppStrings.status,
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              LineIcons.users,
              size: 30.sp,
            ),
            label: AppStrings.friends,
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              LineIcons.userEdit,
              size: 30.sp,
            ),
            label: AppStrings.profile,
            backgroundColor: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
