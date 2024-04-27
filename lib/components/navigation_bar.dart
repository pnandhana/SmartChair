import 'package:flutter/material.dart';
import 'package:demo/pages/home_page.dart' as Home;
import 'package:demo/pages/dashboard_page.dart' as Dashboard;
import 'package:demo/pages/settings_page.dart' as Settings;
import 'package:demo/pages/calibration_page.dart' as Calibration;

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  late List<Widget> _screens;
  int _selectedIndex = 0;
  int _calibrationTabIndex = 0;

  void _handleTabChange(int index) {
    setState(() {
      _calibrationTabIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _screens = [
      const Home.HomeScreen(),
      const Dashboard.DashboardPage(),
      Calibration.CalibrationPage(initialTabIndex: 0, onTabChanged: _handleTabChange),
      const Settings.SettingsScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            text: 'Post',
            style: TextStyle(color: Colors.black), // Default color for "Post"
            children: [
              TextSpan(
                text: 'Fix',
                style: TextStyle(
                  color: Color(0xFF0F366F), // Color for "Fix"
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.all,
            selectedIconTheme: IconThemeData(color: Color(0xFF0F366F)), // Color for selected icons
            unselectedIconTheme: IconThemeData(color: Colors.grey), // Color for unselected icons
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.home),
                label: Text(''),
              ),
              
              NavigationRailDestination(
                icon: Icon(Icons.dashboard),
                label: Text(''),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.lightbulb),
                label: Text(''),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.settings),
                label: Text(''),
              ),
            ],
          ),
          Expanded(child: _screens[_selectedIndex]),
        ],
      ),
    );
  }
}
