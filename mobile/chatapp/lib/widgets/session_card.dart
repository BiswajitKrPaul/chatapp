import 'package:chatapp/blocs/sessionbloc/session_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SessionCard extends StatelessWidget {
  final SessionState state;
  final BuildContext ctx;
  final int pos;
  const SessionCard({
    Key? key,
    required this.state,
    required this.ctx,
    required this.pos,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        title: Text(state.sessionList.sessions[pos].ip),
        subtitle: state.sessionList.sessions[pos].current
            ? Row(
                children: [
                  Text(state.sessionList.sessions[pos].osName),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    padding: EdgeInsets.all(4.sp),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.sp),
                      color: Colors.green,
                    ),
                    child: const Text(
                      'Current',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              )
            : Text(state.sessionList.sessions[pos].osName),
        trailing: state.sessionList.sessions[pos].current
            ? null
            : IconButton(
                onPressed: () {
                  context
                      .read<SessionBloc>()
                      .add(SessionEvent.removeSession(pos));
                },
                icon: const Icon(LineIcons.alternateTrashAlt),
              ),
      ),
    );
  }
}
