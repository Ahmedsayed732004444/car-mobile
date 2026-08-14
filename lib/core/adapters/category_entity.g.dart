// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CategoryEntityAdapter extends TypeAdapter<CategoryEntity> {
  @override
  final int typeId = 2;

  @override
  CategoryEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CategoryEntity(
      id: fields[0] as int,
      catNameAr: fields[1] as String,
      catNameEn: fields[2] as String,
      catIconPath: fields[3] as String,
      commissionType: fields[4] as String,
      commission: fields[5] as double,
      active: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CategoryEntity obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.catNameAr)
      ..writeByte(2)
      ..write(obj.catNameEn)
      ..writeByte(3)
      ..write(obj.catIconPath)
      ..writeByte(4)
      ..write(obj.commissionType)
      ..writeByte(5)
      ..write(obj.commission)
      ..writeByte(6)
      ..write(obj.active);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoryEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
