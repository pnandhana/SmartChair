import 'package:flutter/material.dart';
import 'package:demo/components/bg.dart';


class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundWrapper(
      child: Scaffold(
        // ... your existing Scaffold content
        appBar: AppBar(
          title: Text('Dashboard'),
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/bg.png"),
              fit: BoxFit.cover)
            ),
          )
        ),
      ),
      backgroundImage: 'demo/assets/images/bg.png', // Set your image path
    );
  }
}
