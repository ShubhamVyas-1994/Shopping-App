import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiProvider {
  String url;
  dynamic data;
  String formDataVariableName;
  ApiProvider({this.url, this.data, this.formDataVariableName});

  Future<http.Response> postApiUsingFormData() async {
    String _formData = json.encode(data);
    print(_formData);
    final response = await http.post(url, headers: {
      HttpHeaders.contentTypeHeader:
          'application/x-www-form-urlencoded; charset=UTF-8',
      HttpHeaders.authorizationHeader: ''
    }, body: {
      formDataVariableName: _formData
    });
    return response;
  }
}
