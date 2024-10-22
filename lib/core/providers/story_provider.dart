import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:will/src/TellStory/entity/story_progress.dart';

// StoryProvider to manage current node and choices
final storyProvider = StateNotifierProvider<StoryNotifier, StoryState>((ref) {
  return StoryNotifier();
});

class StoryState {
  final String currentNode;
  final List<String> userChoices;

  StoryState({required this.currentNode, required this.userChoices});
}

class StoryNotifier extends StateNotifier<StoryState> {
  StoryNotifier() : super(StoryState(currentNode: 'start', userChoices: []));

  // Method to update story node and choices
  void makeChoice(String newNode, String choice) async {
    final box = Hive.box<StoryProgress>('storyBox');
    state = StoryState(
        currentNode: newNode, userChoices: [...state.userChoices, choice]);

    // Save progress
    await box.put('progress',
        StoryProgress(currentNode: newNode, userChoices: state.userChoices));
  }

  // Method to load progress
  Future<void> loadProgress() async {
    final box = Hive.box<StoryProgress>('storyBox');
    final progress = box.get('progress');
    if (progress != null) {
      state = StoryState(currentNode: progress.currentNode, userChoices: progress.userChoices);
    }
  }

  // Method to reset the story
  void resetStory() async {
    final box = Hive.box<StoryProgress>('storyBox');
    await box.delete('progress');
    state = StoryState(currentNode: 'start', userChoices: []);
    log('Reset state: $state');
  }
}
