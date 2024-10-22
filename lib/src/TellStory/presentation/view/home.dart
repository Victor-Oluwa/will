import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:will/src/TellStory/presentation/animations/welcome_animation.dart';
import 'package:will/src/TellStory/presentation/view/story_view.dart';
import 'package:will/src/TellStory/presentation/widgets/will_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  bool isFadeComplete = false;
  late AnimationController _fadeController;
  late AnimationController _popController;
  late Animation<double> _fadeAnimation;
  late Animation<double> _popAnimation;

  @override
  void initState() {
    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _popController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _fadeAnimation = WelcomeAnimation(_fadeController).fadeIn;
    _popAnimation = WelcomeAnimation(_popController).pop;

    _fadeController.forward().then(
      (val) {
        setState(() {
          isFadeComplete = true;
        });
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _popController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.blueGrey.shade900,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: FadeTransition(
                opacity: _fadeAnimation,
                child: Image(
                  height: height * 0.25,
                  image: const AssetImage('assets/logo.png'),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            if (isFadeComplete == true)
              AnimatedTextKit(
                isRepeatingAnimation: false,
                displayFullTextOnTap: false,
                onFinished: () {
                  Future.delayed(
                    const Duration(milliseconds: 500),
                    () {
                      setState(() {
                        _popController.forward();
                      });
                    },
                  );
                },
                animatedTexts: [
                  TyperAnimatedText(
                    'Awakened in a shadowed city with no memory and a mysterious key in hand, the choices you make will shape your fate. Reality itself is on the brink of collapse... can you unlock the truth before it’s too late?',
                    textAlign: TextAlign.center,
                    speed: const Duration(milliseconds: 40),
                    textStyle: TextStyle(
                      fontFamily: 'BalooBhai',
                      color: Colors.white70,
                      fontSize: width * 0.04,
                    ),
                  ),
                ],
              ),

            SizedBox(
              height: height * 0.05,
            ),
            ScaleTransition(
              scale: _popAnimation,
              child: NextButton(
                screenHeight: height,
                screenWidth: width,
                text: 'Unlock Your Fate',
                fontSize: 0.05,
                onTap: () {
                  Get.to(()=> const StoryScreen());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
