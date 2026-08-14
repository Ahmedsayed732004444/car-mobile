// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_field_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CustomFieldEntityAdapter extends TypeAdapter<CustomFieldEntity> {
  @override
  final int typeId = 4;

  @override
  CustomFieldEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CustomFieldEntity(
      id: fields[0] as int,
      categoryId: fields[1] as int,
      labelAr: fields[2] as String,
      labelEn: fields[3] as String,
      fieldName: fields[4] as String,
      fieldType: fields[5] as String,
      isRequired: fields[6] as bool,
      options: (fields[7] as List?)?.cast<String>(),
      minLength: fields[8] as int?,
      maxLength: fields[9] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, CustomFieldEntity obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.categoryId)
      ..writeByte(2)
      ..write(obj.labelAr)
      ..writeByte(3)
      ..write(obj.labelEn)
      ..writeByte(4)
      ..write(obj.fieldName)
      ..writeByte(5)
      ..write(obj.fieldType)
      ..writeByte(6)
      ..write(obj.isRequired)
      ..writeByte(7)
      ..write(obj.options)
      ..writeByte(8)
      ..write(obj.minLength)
      ..writeByte(9)
      ..write(obj.maxLength);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CustomFieldEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
