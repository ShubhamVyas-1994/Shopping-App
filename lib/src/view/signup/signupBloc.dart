import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';
import 'package:shopping_app/src/utils/validations/validation.dart';
import 'package:shopping_app/src/utils/sharedPreferance.dart';

class SignupBloc {
  final _username = BehaviorSubject<String>();
  final _password = BehaviorSubject<String>();
  final _contactNo = BehaviorSubject<String>();
  final _email = BehaviorSubject<String>();
  final _dob = BehaviorSubject<String>();
  final _confirmPassword = BehaviorSubject<String>();

  // Getting stream access
  Stream<String> get username => _username.stream.transform(validateUsername);
  Stream<String> get email => _email.stream.transform(validateEmailAddress);
  Stream<String> get contactNo =>
      _contactNo.stream.transform(validateContactNo);
  Stream<String> get dob => _username.stream.transform(validateUsername);
  Stream<String> get password => _password.stream.transform(validatePassword);
  Stream<String> get confirmPassword =>
      _confirmPassword.stream.transform(validateConfirmPassword);
  Stream<bool> get isValid => Rx.combineLatest6(
          username, password, contactNo, email, dob, confirmPassword,
          (username, password, contactNo, email, dob, confirmPassword) {
        return true;
      });

//Set
  Function(String) get changeUsername => _username.sink.add;
  Function(String) get changePassword => _password.sink.add;
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changeContactNo => _contactNo.sink.add;
  Function(String) get changeConfirmPassword => _confirmPassword.sink.add;

  dispose() {
    _username.close();
    _password.close();
    _contactNo.close();
    _email.close();
    _confirmPassword.close();
    _dob.close();
  }

  final validateConfirmPassword =
      StreamTransformer<String, String>.fromHandlers(
          handleData: (confirmPassword, sink) {
    if (confirmPassword.isEmpty) {
      sink.addError('Confirm Password is required');
    } else {
      sink.add(confirmPassword);
    }
  });

  final validateUsername = StreamTransformer<String, String>.fromHandlers(
      handleData: (username, sink) {
    if (username.isEmpty) {
      sink.addError('Username is required');
    } else {
      sink.add(username);
    }
  });

  final validateContactNo = StreamTransformer<String, String>.fromHandlers(
      handleData: (contactNo, sink) {
    if (contactNo.isEmpty) {
      sink.addError('ContactNo is required');
    } else if (contactNo.length != 10) {
      sink.addError('Invalid contactNo');
    } else {
      sink.add(contactNo);
    }
  });

  final validateEmailAddress =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    if (email.isEmpty) {
      sink.addError('Email address is required');
    } else if (!validateEmail(email)) {
      sink.addError('Email address must be valid');
    } else {
      sink.add(email);
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

  validateForm() {
    if (_username.value == null) {
      _username.sink.addError('Username is required');
    }

    if (_password.value == null) {
      _password.sink.addError('Password is required');
    }

    if (_contactNo.value == null) {
      _contactNo.sink.addError('Contact number is required');
    }

    if (_email.value == null) {
      _email.sink.addError('Email is required');
    }
    if (_confirmPassword.value == null) {
      _confirmPassword.sink.addError('Confirm password is required');
    }
  }

  submitProduct(BuildContext context) async {
    if (_password.value != _confirmPassword.value) {
      _confirmPassword.sink.addError('Password dont match');
      return null;
    }
    // If password match then redirecting to dashboard
    storeValueInSharedPreference('authToken', 'AuthTokenToBeEnteredHere');

    Navigator.of(context).pushNamed('/dashboard');
  }
}

final signupBloc = SignupBloc();
