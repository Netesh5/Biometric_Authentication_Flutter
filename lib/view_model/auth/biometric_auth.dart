import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class Auth with ChangeNotifier {
  bool isAuthenticated = false;
  bool authorized = false;
  LocalAuthentication authentication = LocalAuthentication();
  Future<void> Bioauthentication() async {
    try {
      isAuthenticated = await authentication.authenticate(
          localizedReason: "Authenticate to Proceed forward",
          options: const AuthenticationOptions(
              stickyAuth: true, useErrorDialogs: false));
      authorized = isAuthenticated;
      notifyListeners();
    } on PlatformException catch (e) {
      debugPrint(e.message);
    }
  }
}
