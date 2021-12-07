import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:chatapp/constants/api_constants.dart';
import 'package:chatapp/models/sessions_db.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class APIServer {
  static APIServer? _instance;
  late Client _client;
  late Account _account;
  late Database _database;

  APIServer._internal() {
    _client = Client(endPoint: APIConstants.apiUrl)
        .setProject(APIConstants.projectID);
    _account = Account(_client);
    _database = Database(_client);
  }

  static APIServer get instance {
    return _instance ??= APIServer._internal();
  }

  Future<Session> createSession(String email, String password) async {
    Session _session = await APIServer.instance._account
        .createSession(email: email, password: password);
    return _session;
  }

  Future<User> createUser(String email, String password, String name) async {
    return await APIServer.instance._account.create(
      email: email,
      password: password,
      name: name,
    );
  }

  Future<void> logoutSession(String seesionId) async {
    return await APIServer._instance!._account
        .deleteSession(sessionId: seesionId);
  }

  Future<Token> createVerification() async {
    return await APIServer._instance!._account.createVerification(
      url: APIConstants.apiEmailVerification,
    );
  }

  Future<User> getLoggedInUser() async {
    return await APIServer._instance!._account.get();
  }

  Future<void> logout() async {
    await APIServer._instance!._account.getSession(sessionId: 'current');
    return await APIServer._instance!._account
        .deleteSession(sessionId: 'current');
  }

  Future<Document> setOnlineOfflineStatus(
      User user, Session session, bool isOnline) async {
    SessionsDB _sessionsDB = SessionsDB(
      userid: user.$id,
      isonline: isOnline,
      lastseen: DateTime.now().microsecondsSinceEpoch,
      sessionid: session.$id,
    );
    return await APIServer._instance!._database.createDocument(
      collectionId: APIConstants.sessionsDB,
      data: _sessionsDB.toMap(),
      read: ['role:member'],
      write: ['user:${user.$id}'],
    );
  }

  Future<Document> createDocument(
      String collectionID,
      Map<dynamic, dynamic> data,
      List<dynamic> read,
      List<dynamic> write) async {
    return await APIServer._instance!._database.createDocument(
      collectionId: collectionID,
      data: data,
      read: read,
      write: write,
    );
  }

  Future<SessionList> getSessions() async {
    return await APIServer._instance!._account.getSessions();
  }
}
