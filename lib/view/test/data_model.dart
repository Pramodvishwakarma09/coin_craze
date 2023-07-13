// To parse this JSON data, do
//
//     final examsubjectModel = examsubjectModelFromJson(jsonString);

import 'dart:convert';

ExamsubjectModel examsubjectModelFromJson(String str) => ExamsubjectModel.fromJson(json.decode(str));

String examsubjectModelToJson(ExamsubjectModel data) => json.encode(data.toJson());

class ExamsubjectModel {
  bool success;
  String message;
  List<Examdetail> examdetail;
  int status;

  ExamsubjectModel({
    required this.success,
    required this.message,
    required this.examdetail,
    required this.status,
  });

  factory ExamsubjectModel.fromJson(Map<String, dynamic> json) => ExamsubjectModel(
    success: json["success"],
    message: json["message"],
    examdetail: List<Examdetail>.from(json["examdetail"].map((x) => Examdetail.fromJson(x))),
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "message": message,
    "examdetail": List<dynamic>.from(examdetail.map((x) => x.toJson())),
    "status": status,
  };
}

class Examdetail {
  String examBodyOptionsId;
  String questioncount;
  String id;
  dynamic deletedAt;
  DateTime createdAt;
  DateTime updatedAt;
  String name;
  String code;
  String subjectTimer;

  Examdetail({
    required this.examBodyOptionsId,
    required this.questioncount,
    required this.id,
    this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.name,
    required this.code,
    required this.subjectTimer,
  });

  factory Examdetail.fromJson(Map<String, dynamic> json) => Examdetail(
    examBodyOptionsId: json["examBodyOptionsId"],
    questioncount: json["questioncount"],
    id: json["id"],
    deletedAt: json["deletedAt"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    name: json["name"],
    code: json["code"],
    subjectTimer: json["subject_timer"],
  );

  Map<String, dynamic> toJson() => {
    "examBodyOptionsId": examBodyOptionsId,
    "questioncount": questioncount,
    "id": id,
    "deletedAt": deletedAt,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "name": name,
    "code": code,
    "subject_timer": subjectTimer,
  };
}
