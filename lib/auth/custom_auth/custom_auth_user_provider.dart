import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class SaborLocalAdministradorAuthUser {
  SaborLocalAdministradorAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<SaborLocalAdministradorAuthUser>
    saborLocalAdministradorAuthUserSubject =
    BehaviorSubject.seeded(SaborLocalAdministradorAuthUser(loggedIn: false));
Stream<SaborLocalAdministradorAuthUser>
    saborLocalAdministradorAuthUserStream() =>
        saborLocalAdministradorAuthUserSubject
            .asBroadcastStream()
            .map((user) => currentUser = user);
