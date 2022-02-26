// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_section_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NewsSectionDTOAdapter extends TypeAdapter<NewsSectionDTO> {
  @override
  final int typeId = 0;

  @override
  NewsSectionDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NewsSectionDTO(
      id: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, NewsSectionDTO obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewsSectionDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsSectionDTO _$NewsSectionDTOFromJson(Map<String, dynamic> json) =>
    NewsSectionDTO(
      id: json['id'] as String,
    );
