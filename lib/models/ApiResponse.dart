// To parse this JSON data, do
//
//     final apiResponse = apiResponseFromJson(jsonString);

import 'dart:convert';

List<ApiResponse> apiResponseFromJson(String str) => List<ApiResponse>.from(json.decode(str).map((x) => ApiResponse.fromJson(x)));

String apiResponseToJson(List<ApiResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ApiResponse {
  ApiResponse({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  int userId;
  int id;
  String title;
  bool completed;

  factory ApiResponse.fromJson(Map<String, dynamic> json) => ApiResponse(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    completed: json["completed"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "completed": completed,
  };
}
