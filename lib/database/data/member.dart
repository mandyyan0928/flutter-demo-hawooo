class Member {
  String username;
  String password;
  String mobile;

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'password': password,
      'mobile': mobile,
    };
  }

  fromMap(Map<String, dynamic> map) {
    this.username = map['username'];
    this.password = map['password'];
    this.mobile = map['mobile'];
  }
}