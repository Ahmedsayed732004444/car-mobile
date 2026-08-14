// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_has_brand_field_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CategoryHasBrandFieldEntityAdapter
    extends TypeAdapter<CategoryHasBrandFieldEntity> {
  @override
  final int typeId = 3;

  @override
  CategoryHasBrandFieldEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CategoryHasBrandFieldEntity(
      id: fields[0] as int,
      categoryId: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, CategoryHasBrandFieldEntity obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.categoryId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoryHasBrandFieldEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
