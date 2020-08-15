class SignupModel {
  String username;
  String password;
  String contactNo;
  String email;
  String dob;

  SignupModel(
      {this.username, this.password, this.contactNo, this.email, this.dob});
  // To Json return a json Map structure..
  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
        "contactNo": contactNo,
        "email": email,
        "dob": dob
      };
}
