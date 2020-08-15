import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping_app/src/view/dashboard/dashboard.dart';
import 'package:shopping_app/src/view/items/items.dart';
import 'package:shopping_app/src/view/loading/loadingScree.dart';
import 'package:shopping_app/src/view/login/login.dart';
import 'package:shopping_app/src/view/signup/signup.dart';

class RouteGenerator {
  static String authToken;
  static Future<String> getAuthToken() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    print(_prefs.getString('authToken'));
    return _prefs.getString('authToken');
  }

  static Route<dynamic> generator(RouteSettings settings) {
    final agrs = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => FutureBuilder<String>(
              future: getAuthToken(),
              builder: (BuildContext ctx, AsyncSnapshot<String> snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return snapshot.hasData
                      ? CategoryListWidget()
                      : LoginWidget();
                } else {
                  return LoadingWidget();
                }
              }),
        );
      case '/login':
        return MaterialPageRoute(builder: (context) => LoginWidget());
      case '/signup':
        return MaterialPageRoute(
            builder: (context) => FutureBuilder<String>(
                future: getAuthToken(),
                builder: (BuildContext ctx, AsyncSnapshot<String> snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return snapshot.hasData
                        ? CategoryListWidget()
                        : SignupWidget();
                  } else {
                    return LoadingWidget();
                  }
                }));
      case '/dashboard':
        return MaterialPageRoute(builder: (_) => CategoryListWidget());
      case '/items':
        return MaterialPageRoute(
            builder: (_) => ItemListWidget(
                  categoryId: agrs,
                ));
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }

  Widget loadingScreen(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Image(
        image: AssetImage('assets/images/splashscreen.png'),
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
