import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './loginBloc.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

LoginBloc bloc = LoginBloc();

class _LoginWidgetState extends State<LoginWidget> {
  final _bloc = LoginBloc();

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  void signup() {
    Navigator.of(context).pushNamed('/signup');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: RichText(
                text: TextSpan(
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    children: [
                  TextSpan(
                      text: 'Shopping',
                      style: TextStyle(color: Theme.of(context).primaryColor)),
                  TextSpan(text: ' App', style: TextStyle(color: Colors.black)),
                ])),
          ),
          SizedBox(
            height: 250,
            child: Column(
              children: <Widget>[
                LimitedBox(
                  maxHeight: 220,
                  child: SvgPicture.asset(
                      'assets/images/undraw_urban_design_kpu8.svg',
                      semanticsLabel: 'Shoping App'),
                ),
                Padding(
                  padding: EdgeInsets.all(4),
                  child: Text(
                    'Shopping App for all your needs',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Roboto',
                      fontSize: 14,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 300,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: userNameWidget(),
                  ),
                  Padding(padding: EdgeInsets.all(5), child: passwordWidget()),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: ButtonTheme(
                        minWidth: MediaQuery.of(context).size.width - 70,
                        buttonColor: Theme.of(context).primaryColor,
                        height: 50,
                        child: loginButton()),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.centerRight,
                    child: RichText(
                        textAlign: TextAlign.end,
                        text: TextSpan(
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold),
                            text: 'Dont have an account ? ',
                            children: [
                              TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = signup,
                                  text: 'Signup !',
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Theme.of(context).primaryColor)),
                            ])),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    )));
  }

  Widget userNameWidget() {
    return StreamBuilder(
      stream: _bloc.username,
      builder: (context, _snapshot) {
        return TextField(
          decoration: InputDecoration(
            labelText: 'E-mail Address',
            errorText: _snapshot.error,
            border: const OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(10.0),
              ),
            ),
          ),
          onChanged: _bloc.changeUsername,
        );
      },
    );
  }

  Widget passwordWidget() {
    return StreamBuilder(
      stream: _bloc.password,
      builder: (context, _snapshot) {
        return TextField(
            onChanged: _bloc.changePassword,
            obscureText: true, // Use secure text for passwords.
            decoration: InputDecoration(
              labelText: 'Password',
              errorText: _snapshot.error,
              border: const OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(10.0),
                ),
              ),
            ));
      },
    );
  }

  Widget loginButton() {
    return StreamBuilder(
      stream: _bloc.isValid,
      builder: (context, snapshot) {
        return RaisedButton(
            child: const Text(
              'Login',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            disabledColor: Theme.of(context).primaryColor,
            onPressed: !snapshot.hasData
                ? _bloc.validateForm
                : () {
                    _bloc.submitProduct(context);
                  },
            color: Theme.of(context).primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(50), left: Radius.circular(50))));
      },
    );
  }
}
