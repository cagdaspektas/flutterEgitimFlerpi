import 'package:vexana/vexana.dart';

class GetUserDataModel extends INetworkModel {
  GetUserDataModel({
    this.data,
    this.support,
  });

  Data? data;
  Support? support;

  factory GetUserDataModel.fromJson(Map<String, dynamic> json) => GetUserDataModel(
        data: Data.fromJson(json["data"]),
        support: Support.fromJson(json["support"]),
      );

  @override
  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
        "support": support?.toJson(),
      };

  @override
  GetUserDataModel fromJson(Map<String, dynamic> json) {
    return GetUserDataModel(
      data: Data.fromJson(json["data"]),
      support: Support.fromJson(json["support"]),
    );
  }
}

class Data {
  Data({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
      };
}

class Support {
  Support({
    this.url,
    this.text,
  });

  String? url;
  String? text;

  factory Support.fromJson(Map<String, dynamic> json) => Support(
        url: json["url"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "text": text,
      };
}
