import 'package:vexana/vexana.dart';

class GetListUserDataModel extends INetworkModel<GetListUserDataModel> {
  GetListUserDataModel({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  int? userId;
  int? id;
  String? title;
  String? body;

  factory GetListUserDataModel.fromJson(Map<String, dynamic> json) => GetListUserDataModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };

  @override
  GetListUserDataModel fromJson(Map<String, dynamic> json) {
    return GetListUserDataModel(
      userId: json["userId"],
      id: json["id"],
      title: json["title"],
      body: json["body"],
    );
  }
}
