// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ads_banner_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AdsBannerEntityAdapter extends TypeAdapter<AdsBannerEntity> {
  @override
  final int typeId = 5;

  @override
  AdsBannerEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AdsBannerEntity(
      id: fields[0] as int,
      adsImage: fields[1] as String,
      isActive: fields[2] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, AdsBannerEntity obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.adsImage)
      ..writeByte(2)
      ..write(obj.isActive);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AdsBannerEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
