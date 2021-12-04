import 'package:chatapp/blocs/sessionbloc/sessionlist_bloc.dart';
import 'package:chatapp/constants/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SessionLists extends StatefulWidget {
  const SessionLists({Key? key}) : super(key: key);

  @override
  State<SessionLists> createState() => _SessionListsState();
}

class _SessionListsState extends State<SessionLists> {
  @override
  void initState() {
    super.initState();
    context.read<SessionlistBloc>().add(GetAllSession());
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(AppStrings.session),
    );
  }
}
