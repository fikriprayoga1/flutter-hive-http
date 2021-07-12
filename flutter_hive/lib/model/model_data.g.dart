// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ModelDataAdapter extends TypeAdapter<ModelData> {
  @override
  final int typeId = 1;

  @override
  ModelData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ModelData(
      fields[0] as int?,
      fields[1] as String?,
      fields[2] as String?,
      fields[3] as String?,
      fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ModelData obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(2)
      ..write(obj.first_name)
      ..writeByte(3)
      ..write(obj.last_name)
      ..writeByte(4)
      ..write(obj.avatar);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ModelDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelData _$ModelDataFromJson(Map<String, dynamic> json) {
  return ModelData(
    json['id'] as int?,
    json['email'] as String?,
    json['first_name'] as String?,
    json['last_name'] as String?,
    json['avatar'] as String?,
  );
}

Map<String, dynamic> _$ModelDataToJson(ModelData instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'avatar': instance.avatar,
    };
