import 'package:flutter/material.dart';
import './signupBloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupWidget extends StatefulWidget {
  @override
  _SignupWidgetState createState() => _SignupWidgetState();
}

class _SignupWidgetState extends State<SignupWidget> {
  @override
  void dispose() {
    signupBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(
      children: [
        Positioned(
            top: -10,
            right: 0,
            left: 0,
            child: SvgPicture.asset(
              'assets/images/undraw_apartment_rent_o0ut.svg',
              semanticsLabel: 'Shoping App',
              fit: BoxFit.contain,
              alignment: Alignment.bottomCenter,
              colorBlendMode: BlendMode.lighten,
            )),
        Container(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: RichText(
                      text: TextSpan(
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                          children: [
                        TextSpan(
                            text: 'Shopping',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor)),
                        TextSpan(
                            text: ' App',
                            style: TextStyle(color: Colors.black)),
                      ])),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: userNameWidget(),
                      ),
                      Padding(padding: EdgeInsets.all(5), child: emailWidget()),
                      Padding(
                          padding: EdgeInsets.all(5), child: contactWidget()),
                      Padding(
                          padding: EdgeInsets.all(5), child: passwordWidget()),
                      Padding(
                          padding: EdgeInsets.all(5),
                          child: confirmPasswordWidget()),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: ButtonTheme(
                            minWidth: MediaQuery.of(context).size.width - 50,
                            buttonColor: Theme.of(context).primaryColor,
                            height: 50,
                            child: signupButton()),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    )));
  }

  // Username Widget
  Widget userNameWidget() {
    return StreamBuilder(
      stream: signupBloc.username,
      builder: (context, _snapshot) {
        return TextField(
          decoration: InputDecoration(
            fillColor: Colors.white,
            labelText: 'Name',
            errorText: _snapshot.error,
            border: const OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(10.0),
              ),
            ),
          ),
          onChanged: signupBloc.changeUsername,
        );
      },
    );
  }

  // Email widget
  Widget emailWidget() {
    return StreamBuilder(
      stream: signupBloc.email,
      builder: (context, _snapshot) {
        return TextField(
          decoration: InputDecoration(
            labelText: 'Email address',
            errorText: _snapshot.error,
            border: const OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(10.0),
              ),
            ),
          ),
          onChanged: signupBloc.changeEmail,
        );
      },
    );
  }

  // ContactNo widget
  Widget contactWidget() {
    return StreamBuilder(
      stream: signupBloc.contactNo,
      builder: (context, _snapshot) {
        return TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Contact number',
            errorText: _snapshot.error,
            border: const OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(10.0),
              ),
            ),
          ),
          onChanged: signupBloc.changeContactNo,
        );
      },
    );
  }

  // Password Widget
  Widget passwordWidget() {
    return StreamBuilder(
      stream: signupBloc.password,
      builder: (context, _snapshot) {
        return TextField(
            onChanged: signupBloc.changePassword,
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

  // Confirm Password Widget
  Widget confirmPasswordWidget() {
    return StreamBuilder(
      stream: signupBloc.confirmPassword,
      builder: (context, _snapshot) {
        return TextField(
            onChanged: signupBloc.changeConfirmPassword,
            obscureText: true, // Use secure text for passwords.
            decoration: InputDecoration(
              labelText: 'Confirm password',
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

  Widget signupButton() {
    return StreamBuilder(
      stream: signupBloc.isValid,
      builder: (context, snapshot) {
        return RaisedButton(
            child: const Text(
              'Sign Up',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            disabledColor: Theme.of(context).primaryColor,
            onPressed: !snapshot.hasData
                ? signupBloc.validateForm
                : () {
                    signupBloc.submitProduct(context);
                  },
            color: Theme.of(context).primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(50), left: Radius.circular(50))));
      },
    );
  }
}
