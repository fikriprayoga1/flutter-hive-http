// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_counter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ModelCounterAdapter extends TypeAdapter<ModelCounter> {
  @override
  final int typeId = 0;

  @override
  ModelCounter read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ModelCounter(
      fields[0] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, ModelCounter obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.value);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ModelCounterAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
