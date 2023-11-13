import 'package:dev4passion_mdapp_patient/screens/authenticate/sign_in.dart';
import 'package:flutter/material.dart';



class SignIn extends StatefulWidget {
  const SignIn({ Key? key }) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

   final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    // return Container(
      
    // );
    return Scaffold(

        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Sign In'),
        
        body: Container(
            padding: EdgeInsets.symetric(vertical: 20.0, horizontal: 50.0),
            child: RaiseButton(
                child: Text('Sign In anon'),
                onPressed: () async {

                  dynamic result = await _auth.signInAnon();
                  if (result == null) {
                    print('error signing in')
                  } else {
                    print('Signed in');
                    print(result);
                  }

                }
            )

        ),

    );
  }
}