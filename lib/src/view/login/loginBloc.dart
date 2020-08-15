import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';
import 'package:shopping_app/src/utils/sharedPreferance.dart';
import 'package:shopping_app/src/utils/validations/validation.dart';
import 'package:flutter/material.dart';

class LoginBloc {
  final _username = BehaviorSubject<String>();
  final _password = BehaviorSubject<String>();

  // Getting stream access
  Stream<String> get username => _username.stream.transform(validateUsername);
  Stream<String> get password => _password.stream.transform(validatePassword);
  // This is emit event when both streams have emitted atleast once
  Stream<bool> get isValid =>
      Rx.combineLatest2(username, password, (username, password) {
        print("Username" + username);
        print("Password" + password);

        return true;
      });
//Set
  Function(String) get changeUsername => _username.sink.add;
  Function(String) get changePassword => _password.sink.add;

  dispose() {
    _username.close();
    _password.close();
  }

  // Every time user input something we will check weather it is valid value or not
  // For that we are transforming stream.
  final validateUsername = StreamTransformer<String, String>.fromHandlers(
      handleData: (username, sink) {
    if (!validateEmail(username)) {
      sink.addError('Email address must be valid');
    } else {
      sink.add(username);
    }
  });

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    if (password.length < 8) {
      sink.addError('Invalid Password');
    } else {
      sink.add(password);
    }
  });
  // When User tap on login button without adding email or password
  // this methods will run
  // Checking if user has entered login required details
  // if not throwing errors

  validateForm() {
    if (_username.value == null) {
      _username.sink.addError('Email address is required');
    }
    if (_password.value == null) {
      _password.sink.addError('Password is required');
    }
  }

  // After email and password entered we want user redirect to dashboard i.e Category list in this case.
  submitProduct(BuildContext context) async {
    // Here you can encrpyt password to send to backend for verification
    // For now we just enter a simple authToken

    // String passw = encrytor(_password.value);
    storeValueInSharedPreference('authToken', 'GetYourAuthTokenHere');
    Navigator.of(context).pushNamed('/dashboard');
  }
}
