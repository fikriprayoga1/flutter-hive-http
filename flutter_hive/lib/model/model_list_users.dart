import 'package:flutter_hive/model/model_data.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
part 'model_list_users.g.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 0)
class ModelListUsers extends HiveObject {
  @HiveField(0)
  int? page;
  @HiveField(1)
  // ignore: non_constant_identifier_names
  int? per_page;
  @HiveField(2)
  int? total;
  @HiveField(3)
  // ignore: non_constant_identifier_names
  int? total_pages;
  @HiveField(4)
  List<ModelData?>? data;

  ModelListUsers(
    this.page,
    this.per_page,
    this.total,
    this.total_pages,
    this.data,
  );

  factory ModelListUsers.fromJson(Map<String, dynamic> json) =>
      _$ModelListUsersFromJson(json);
  Map<String, dynamic> toJson() => _$ModelListUsersToJson(this);
}
