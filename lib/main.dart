import 'package:auth_app/services/google_signin.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AUTH APP',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
          actions: [
            IconButton(onPressed: () {
              GoogleSigninService.signOut();
            }, icon: const Icon(Icons.logout))
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(FontAwesomeIcons.google, color: Colors.white),
                    Text('  SignIn Google',
                        style: TextStyle(color: Colors.white, fontSize: 17)),
                  ],
                ),
                splashColor: Colors.transparent,
                minWidth: double.infinity,
                height: 40,
                color: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                onPressed: () {
                  GoogleSigninService.signInWithGoogle();
                },
              )
            ],
          )),
        ),
      ),
    );
  }
}
