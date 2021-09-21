import 'package:google_sign_in/google_sign_in.dart';

class GoogleSigninService {
  static final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
    ],
  );

  static Future<GoogleSignInAccount> signInWithGoogle() async {
    final GoogleSignInAccount? account = await _googleSignIn.signIn();
    try {
      print(account);

      final userData = await account!.authentication;
      print('IDTOKEN: ${userData.idToken}');
      return account;
    } catch (e) {
      print('Error en Google SignIn: $e');
      return account!;
    }
  }

  static Future signOut() async {
    final GoogleSignInAccount? signout = await _googleSignIn.signOut();
    try {
      print('Google SignOut ok: $signout');
      return signout;
    } catch (e) {
      print('Error en Google SignOut: $e');
      return signout;
    }
  }
}
