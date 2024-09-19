import 'dart:convert';

List<CommmentsModel> commmentsModelFromJson(String str) =>
    List<CommmentsModel>.from(
        json.decode(str).map((x) => CommmentsModel.fromJson(x)));

String commmentsModelToJson(List<CommmentsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CommmentsModel {
  int postId;
  int id;
  String name;
  String email;
  String body;

  CommmentsModel({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });

  factory CommmentsModel.fromJson(Map<String, dynamic> json) => CommmentsModel(
        postId: json["postId"],
        id: json["id"],
        name: json["name"],
        email: json["email"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "postId": postId,
        "id": id,
        "name": name,
        "email": email,
        "body": body,
      };
}
