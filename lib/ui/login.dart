import 'package:flutter/material.dart';

import 'package:login/styles/styles.dart';
import 'package:login/utils/validate.dart';
import 'package:login/widget/styled_flat_button.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log In'),
        leading: Container(),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              colors: [Colors.blue[600],Colors.blue[400],Colors.blue[300]]
            )
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
            child: LoginForm(),
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {


  @override
  _LoginFormState createState() => _LoginFormState();
}



class _LoginFormState extends State<LoginForm> {

  String email = '';
  String password = '';



  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          Text(
            'Welcome',
            textAlign: TextAlign.center,
            style: Styles.h1,

          ),
          SizedBox(height: 30.0),
          TextFormField(
            decoration: Styles.input.copyWith(
              hintText: 'Email'
            ),
            validator: (value){
              email = value.trim();
              return Validate.validateEmail(value);
            },
          ),
          SizedBox(height: 10.0),
          TextFormField(
            obscureText: true,
            decoration: Styles.input.copyWith(
              hintText: 'Password'
            ),
            validator: (value){
              password = value.trim();
              return Validate.requiredField(value, 'Password is required');
            },
          ),
          SizedBox(height: 15.0,),

          StyledFlatButton(
            'Login',
            onPressed: (){
              Navigator.pushNamed(context, '/home');
            },

          ),

          SizedBox(height: 10.0,),
          Center(

          )


        ],
      ),
    );
  }
}


