import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:will/src/TellStory/entity/story_progress.dart';
import 'package:will/src/TellStory/presentation/view/logo_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(StoryProgressAdapter());
  await Hive.openBox<StoryProgress>('storyBox'); // Box for storing story progress
  runApp(
    const ProviderScope(
      child: WillApp(),
    ),
  );
}

class WillApp extends StatelessWidget {
  const WillApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LogoScreen(),
    );
  }
}
