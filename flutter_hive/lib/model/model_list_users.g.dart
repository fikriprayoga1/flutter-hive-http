// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_list_users.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ModelListUsersAdapter extends TypeAdapter<ModelListUsers> {
  @override
  final int typeId = 2;

  @override
  ModelListUsers read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ModelListUsers(
      fields[0] as int?,
      fields[1] as int?,
      fields[2] as int?,
      fields[3] as int?,
      (fields[4] as List?)?.cast<ModelData?>(),
    );
  }

  @override
  void write(BinaryWriter writer, ModelListUsers obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.page)
      ..writeByte(1)
      ..write(obj.per_page)
      ..writeByte(2)
      ..write(obj.total)
      ..writeByte(3)
      ..write(obj.total_pages)
      ..writeByte(4)
      ..write(obj.data);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ModelListUsersAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelListUsers _$ModelListUsersFromJson(Map<String, dynamic> json) {
  return ModelListUsers(
    json['page'] as int?,
    json['per_page'] as int?,
    json['total'] as int?,
    json['total_pages'] as int?,
    (json['data'] as List<dynamic>?)
        ?.map((e) =>
            e == null ? null : ModelData.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ModelListUsersToJson(ModelListUsers instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.per_page,
      'total': instance.total,
      'total_pages': instance.total_pages,
      'data': instance.data?.map((e) => e?.toJson()).toList(),
    };
