import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class PetgramFirebaseUser {
  PetgramFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

PetgramFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<PetgramFirebaseUser> petgramFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<PetgramFirebaseUser>(
      (user) {
        currentUser = PetgramFirebaseUser(user);
        return currentUser!;
      },
    );
