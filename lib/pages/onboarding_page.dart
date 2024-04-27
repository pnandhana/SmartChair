import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final List<PageViewModel> pages = [
    PageViewModel(
      title: "Welcome!",
      body:
          "This app helps you monitor your posture and improve your sitting habits.",
      image: Center(
        child: Image.asset(
          "assets/images/onboarding_1.png", // Replace with your image path
          fit: BoxFit.cover,
        ),
      ),
    ),
    PageViewModel(
      title: "Real-time feedback",
      body: "Get instant notifications to correct your posture and avoid slouching.",
      image: Center(
        child: Image.asset(
          "assets/images/onboarding_2.png", // Replace with your image path
          fit: BoxFit.cover,
        ),
      ),
    ),
    PageViewModel(
      title: "Track your progress",
      body: "Monitor your posture improvement over time and stay motivated.",
      image: Center(
        child: Image.asset(
          "assets/images/onboarding_3.png", // Replace with your image path
          fit: BoxFit.cover,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: pages,
      onDone: () {
        // Navigate to Sign Up page (replace with your navigation logic)
        Navigator.pushNamed(context, '/signup');
      },
      onSkip: () {
        // Navigate to Sign Up page (replace with your navigation logic)
        Navigator.pushNamed(context, '/signup');
      },
      showSkipButton: true,
      skip: const Text("Skip"),
      next: const Text("Next"),
      done: const Text("Get Started"),
      dots: AnimatedDots(
        duration: 300,
        color: Colors.blue,
        activeColor: Colors.lightBlueAccent,
        count: pages.length,
      ),
      dotsDecoration: const DotsDecoration(
        color: Color(0x00000000),
      ),
    );
  }
}