import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
part 'model_data.g.dart';

@JsonSerializable()
@HiveType(typeId: 1)
class ModelData {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String? email;
  @HiveField(2)
  // ignore: non_constant_identifier_names
  String? first_name;
  @HiveField(3)
  // ignore: non_constant_identifier_names
  String? last_name;
  @HiveField(4)
  String? avatar;

  ModelData(
    this.id,
    this.email,
    this.first_name,
    this.last_name,
    this.avatar,
  );

  factory ModelData.fromJson(Map<String, dynamic> json) =>
      _$ModelDataFromJson(json);
  Map<String, dynamic> toJson() => _$ModelDataToJson(this);
}
