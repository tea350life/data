import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class Motiv8FirebaseUser {
  Motiv8FirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

Motiv8FirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<Motiv8FirebaseUser> motiv8FirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<Motiv8FirebaseUser>(
      (user) {
        currentUser = Motiv8FirebaseUser(user);
        return currentUser!;
      },
    );
