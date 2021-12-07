import 'package:chatapp/blocs/sessionbloc/session_bloc.dart';
import 'package:chatapp/widgets/session_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SessionLists extends StatefulWidget {
  const SessionLists({Key? key}) : super(key: key);

  @override
  State<SessionLists> createState() => _SessionListsState();
}

class _SessionListsState extends State<SessionLists> {
  @override
  void initState() {
    super.initState();
    final stateVal = BlocProvider.of<SessionBloc>(context).state;
    if (stateVal.sessionList.sessions.isEmpty) {
      context.read<SessionBloc>().add(const SessionEvent.getAllSessions());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SessionBloc, SessionState>(
      listener: (context, state) {
        if (state.hasErrorOccured) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Error Occured Due to : ${state.errorMessage}'),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state.hasErrorOccured) {
          return const Center(
            child: Text('Error'),
          );
        } else {
          return Padding(
            padding: EdgeInsets.all(4.0.sp),
            child: RefreshIndicator(
              onRefresh: () async {
                context
                    .read<SessionBloc>()
                    .add(const SessionEvent.getAllSessions());
              },
              child: ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                itemBuilder: (ctx, pos) {
                  return SessionCard(
                    state: state,
                    ctx: ctx,
                    pos: pos,
                  );
                },
                itemCount: state.sessionList.sum,
              ),
            ),
          );
        }
      },
    );
  }
}
