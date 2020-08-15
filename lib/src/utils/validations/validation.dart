// Email verification pattern
Pattern _pattern =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
bool validateEmail(String value) {
  if (value.isEmpty) return false;
  RegExp regex = new RegExp(_pattern);
  return regex.hasMatch(value);
}
