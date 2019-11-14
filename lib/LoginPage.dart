import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'utils/sign_in.dart';
import 'roots/home_page.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();

}


class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlutterLogo(size: 150),
            SizedBox(height: 50),
            _signInButton(),
          
          ],
      )    
      )
    );
  }

  Widget _signInButton(){
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () => {
        signInWithGoogle().whenComplete(() {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return HomePage();
                }
              )
            );
          }
        )
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Sign in with Google',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
            )
          ],
        )
      )
    );
  }
}
