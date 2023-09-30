class User {
  late final String? displayName;
  late final String? email;
  late final String? phone;
  late final String? _password;

  User({this.displayName, this.email, this.phone});

  setPassword(String? pwd) {
    _password = pwd;
  }

  String? get password => _password;

  User.fromJson(Map<String, dynamic> json)
      : displayName = json['displayName'],
        phone = json['phone'],
        email = json['email'];

  Map<String, dynamic> toJson() =>
      {'name': displayName, 'email': email, 'phone': phone};
}
