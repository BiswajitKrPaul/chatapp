import 'dart:convert';

class SessionsDB {
  String sessionid;
  String userid;
  bool isonline;
  int lastseen;

  SessionsDB({
    required this.sessionid,
    required this.userid,
    required this.isonline,
    required this.lastseen,
  });

  Map<String, dynamic> toMap() {
    return {
      'sessionid': sessionid,
      'userid': userid,
      'isonline': isonline,
      'lastseen': lastseen,
    };
  }

  factory SessionsDB.fromMap(Map<String, dynamic> map) {
    return SessionsDB(
      sessionid: map['sessionid'],
      userid: map['userid'],
      isonline: map['isonline'],
      lastseen: map['lastseen'],
    );
  }

  String toJson() => json.encode(toMap());

  factory SessionsDB.fromJson(String source) =>
      SessionsDB.fromMap(json.decode(source));
}
