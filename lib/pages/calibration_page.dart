import 'package:flutter/material.dart';
import 'package:demo/components/bg.dart'; // Import BackgroundWrapper
import 'package:demo/components/button.dart'; // Import ButtonWidget
import 'package:demo/pages/dashboard_page.dart'; // Import the DashboardPage

class CalibrationPage extends StatefulWidget {
  final int initialTabIndex;
  final Function(int) onTabChanged;

  const CalibrationPage({Key? key, required this.initialTabIndex, required this.onTabChanged}) : super(key: key);

  @override
  _CalibrationPageState createState() => _CalibrationPageState();
}

class _CalibrationPageState extends State<CalibrationPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: widget.initialTabIndex);
    _tabController.addListener(() {
      widget.onTabChanged(_tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundWrapper( // Use BackgroundWrapper for background image
      backgroundImage: 'images/bg.jpg', // Provide your image path
      child: Scaffold(
        appBar: AppBar(
          title: Text('Calibration'),
          bottom: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: 'Set Up intro'), // Updated tab names
              Tab(text: 'Good Posture'),
              Tab(text: 'Bad Posture'),
              Tab(text: 'All set'),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'First of all meet our PostFix chair!\n\nThe chair needs to be recognise when your\nposture is good and also when you slouch\nOnce trained the chair will track monitoring\nyour posture\n\nIf you slouch postFix will remind you to \nsit on good posture',
                    style: TextStyle(
                      fontSize: 20),
                      textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  ButtonWidget(
                    buttonText: 'Continue', // Tab 1 button text for ButtonWidget
                    onPressed: () {
                      // Redirect to the Good Posture tab when the button is pressed
                      goToGoodPostureTab();
                    },
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Let us train the chair to recognise\nyour good posture',
                    style: TextStyle(fontSize: 20,),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Image.asset(
                    'images/5.png', // Replace 'your_image.png' with your actual image path
                    height: 300, // Adjust the height as needed
                    width: 300, // Adjust the width as needed
                  ),
                  Text(
                    'Get comfortable.\nsit up straight.\nWhen you are ready, press the button to begin.\nFeel free to move arround a little',
                    style: TextStyle(fontSize: 20,),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  ButtonWidget(
                    buttonText: 'Begin the Good Posture Analysis', // Tab 2 button text
                    onPressed: () {
                      // Add onPressed action for the button
                    },
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'That was great!\n Now we want to see you slouching.\n\nSlouch down in the chair.\n Relax and be lazy\n',
                    style: TextStyle(fontSize: 20,),
                    textAlign: TextAlign.center,
                  ),
                  Image.asset(
                    'images/5.png', // Replace 'your_image.png' with your actual image path
                    height: 300, // Adjust the height as needed
                    width: 300, // Adjust the width as needed
                  ),
                  Text(
                    'Now press the button to begin',
                    style: TextStyle(fontSize: 20,),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  ButtonWidget(
                    buttonText: 'Begin the Bad Posture Analysis', // Tab 3 button text
                    onPressed: () {
                      // Add onPressed action for the button
                    },
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
 Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 100,
                  ),
                  Text(
                    'You are all set.',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Thank You!\nPostFix is now set up.\nYou can monitor from the dashboard.',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  ButtonWidget(
                    buttonText: 'Go to Dashboard', // Tab 4 button text
                    onPressed: () {
                      // Navigate to the DashboardPage when the button is pressed
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => DashboardPage()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // Method to switch to the Good Posture tab
  void goToGoodPostureTab() {
    _tabController.animateTo(1); // Index 1 corresponds to the Good Posture tab
  }
}
