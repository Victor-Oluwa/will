import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:get/get.dart';
import 'package:will/core/providers/story_provider.dart';
import 'package:will/core/widgets/will_text.dart';
import 'package:will/src/TellStory/data/story_data.dart';
import 'package:will/src/TellStory/presentation/view/home.dart';
import 'package:will/src/TellStory/presentation/widgets/will_button.dart';

class StoryScreen extends ConsumerStatefulWidget {
  const StoryScreen({super.key});

  @override
  ConsumerState<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends ConsumerState<StoryScreen> {
  bool _isFinishedWriting = false;
  Key key = UniqueKey();
  late ScrollController _scrollController;
  late Timer? _timer;

  _scrollUp() {
    _scrollController.animateTo(_scrollController.position.maxScrollExtent,
        duration: const Duration(seconds: 1), curve: Curves.easeInOut);
  }

  void setListener() {
    _scrollController.addListener(
      () {
        if (_isFinishedWriting == true &&
            _scrollController.position.pixels ==
                _scrollController.position.maxScrollExtent) {
          _cancelTimer();
        }
      },
    );
  }

  refreshTypeWriter() {
    setState(() {
      key = UniqueKey();
      _isFinishedWriting = false;
    });
    _startTimer();
    setListener();
  }

  void _cancelTimer() {
    if (_timer != null && _timer!.isActive) {
      _timer?.cancel();
    }
  }

  void _startTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        _scrollUp();
      },
    );
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _startTimer();
    setListener();
    super.initState();
  }

  @override
  void dispose() {
    _cancelTimer();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final storyState = ref.watch(storyProvider);
    final currentNode = storyState.currentNode;
    final storyNode = storyData[currentNode] ?? {};
    final List? choices = storyNode['choices'] as List?;
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            ref.read(storyProvider.notifier).resetStory();
            Get.offAll(() =>const HomeScreen());
          },
          child: Icon(
            Icons.cancel,
            color: Colors.white70,
            size: width * 0.05,
          ),
        ),
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Center(
                  child: WillText(
                    data: 'The Key to Oblivion',
                    fontSize: width * 0.09,
                    color: Colors.white70,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              AnimatedTextKit(
                key: key,
                animatedTexts: [
                  TypewriterAnimatedText(
                    storyNode['text'] == null
                        ? 'oops! We have not written this part of the story. The story is still under construction. Bear with us 🙏🏽.'
                        : storyNode['text'].toString(),
                    textAlign: TextAlign.justify,
                    speed: const Duration(milliseconds: 25),
                    textStyle: TextStyle(
                      fontFamily: 'BalooBhai',
                      color: Colors.white70,
                      fontSize: width * 0.05,
                    ),
                  ),
                ],
                onFinished: () {
                  setState(() {
                    _isFinishedWriting = true;
                  });
                },
                totalRepeatCount: 1,
                pause: const Duration(milliseconds: 1000),
              ),
              const SizedBox(height: 20),
              if (_isFinishedWriting == true)
                Column(
                  children: List.generate(
                    choices != null ? choices.length : 1,
                    (index) {
                      return choices != null
                          ? Padding(
                              padding: EdgeInsets.only(top: height * 0.03),
                              child: NextButton(
                                screenHeight: height,
                                screenWidth: width,
                                height: 0.15,
                                fontSize: 0.04,
                                text: choices[index]['text'],
                                onTap: () {
                                  ref.read(storyProvider.notifier).makeChoice(
                                      choices[index]['nextNode']!,
                                      choices[index]['text']!);
                                  _cancelTimer();
                                  refreshTypeWriter();
                                },
                              ),
                            )
                          : NextButton(
                              screenHeight: height,
                              screenWidth: width,
                              text: 'Restart',
                              onTap: () {
                                ref.read(storyProvider.notifier).resetStory();
                                setState(() {
                                  _isFinishedWriting = false;
                                });
                                Future.delayed(
                                  const Duration(seconds: 1),
                                  () {
                                    _cancelTimer();
                                    refreshTypeWriter();
                                  },
                                );
                              },
                            );
                    },
                  ),
                ),
              SizedBox(
                height: !_isFinishedWriting ? height * 0.10 : height * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
