// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_car_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BrandCarEntityAdapter extends TypeAdapter<BrandCarEntity> {
  @override
  final int typeId = 1;

  @override
  BrandCarEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BrandCarEntity(
      id: fields[0] as int,
      brandCarNameAr: fields[1] as String,
      brandCarNameEn: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, BrandCarEntity obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.brandCarNameAr)
      ..writeByte(2)
      ..write(obj.brandCarNameEn);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BrandCarEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
