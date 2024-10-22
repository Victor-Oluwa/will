// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_progress.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StoryProgressAdapter extends TypeAdapter<StoryProgress> {
  @override
  final int typeId = 0;

  @override
  StoryProgress read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StoryProgress(
      currentNode: fields[0] as String,
      userChoices: (fields[1] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, StoryProgress obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.currentNode)
      ..writeByte(1)
      ..write(obj.userChoices);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoryProgressAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
