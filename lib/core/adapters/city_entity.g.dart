// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CityEntityAdapter extends TypeAdapter<CityEntity> {
  @override
  final int typeId = 0;

  @override
  CityEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CityEntity(
      id: fields[0] as int,
      cityNameAr: fields[1] as String,
      cityNameEn: fields[2] as String,
      isActive: fields[3] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, CityEntity obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.cityNameAr)
      ..writeByte(2)
      ..write(obj.cityNameEn)
      ..writeByte(3)
      ..write(obj.isActive);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CityEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
