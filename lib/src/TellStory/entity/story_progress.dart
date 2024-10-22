import 'package:hive/hive.dart';

part 'story_progress.g.dart';

@HiveType(typeId: 0)
class StoryProgress extends HiveObject {
  @HiveField(0)
  late String currentNode;

  @HiveField(1)
  late List<String> userChoices;

  StoryProgress({required this.currentNode, required this.userChoices});
}
