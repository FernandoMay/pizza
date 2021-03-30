import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    this.data,
  });

  Data data;

  factory User.fromJson(Map<String, dynamic> json) => User(
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class Data {
  Data({
    this.session,
    this.user,
  });

  Session session;
  UserClass user;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        session: Session.fromJson(json["session"]),
        user: UserClass.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "session": session.toJson(),
        "user": user.toJson(),
      };
}

class Session {
  Session({
    this.err,
    this.data,
  });

  dynamic err;
  String data;

  factory Session.fromJson(Map<String, dynamic> json) => Session(
        err: json["err"],
        data: json["data"],
      );

  Map<String, dynamic> toJson() => {
        "err": err,
        "data": data,
      };
}

class UserClass {
  UserClass({
    this.id,
    this.email,
    this.birthday,
    this.firstName,
    this.lastName,
    this.password,
    this.gender,
    this.username,
    this.avatar,
  });

  String id;
  String email;
  DateTime birthday;
  String firstName;
  String lastName;
  String password;
  String gender;
  String username;
  String avatar;

  factory UserClass.fromJson(Map<String, dynamic> json) => UserClass(
        id: json["id"],
        email: json["email"],
        birthday: DateTime.parse(json["birthday"]),
        firstName: json["firstName"],
        lastName: json["lastName"],
        password: json["password"],
        gender: json["gender"],
        username: json["username"],
        avatar: json["avatar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "birthday": birthday.toIso8601String(),
        "firstName": firstName,
        "lastName": lastName,
        "password": password,
        "gender": gender,
        "username": username,
        "avatar": avatar,
      };
}
