import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Add padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Large rectangle container with rounded corners and positioned text
            Stack(
              children: [
                Container(
                  height: 200.0, // Set your desired height
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 232, 235, 242), // Background color
                    borderRadius: BorderRadius.circular(16.0), // Rounded corners
                  ),
                ),
                Positioned(
                  bottom: 16.0, // Adjust vertical position from bottom
                  left: 16.0, // Adjust horizontal position from left
                  child: Text(
                    'Hi User!',
                    style: TextStyle(
                      fontSize: 40.0, // Make text 4 times bigger (assuming original size was 6.0)
                      fontWeight: FontWeight.bold, // Make text bold
                      color: Color.fromARGB(207, 0, 0, 34),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0), // Adjust value for desired spacing
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // Row to hold two smaller rectangles with rounded corners
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity, // Match parent width (within Row)
                    height: 200.0, // Increased height by 4 units
                    decoration: BoxDecoration(
                      color:Color.fromARGB(255, 232, 235, 242), // Background color
                      borderRadius: BorderRadius.circular(16.0), // Rounded corners
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Click the start button to begin monitoring and remember to sit up straight!\n\nFeel free to minimize this window once monitoring has started. Just come back to the window when you need to pause the monitoring.\n\nShortly after starting monitoring, you will see your stats appear here.',
                          textAlign: TextAlign.justify, // Justify text for better alignment
                          style: TextStyle(
                            fontSize: 15.0, // Adjust font size as needed
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16.0), // Adjust value for desired spacing
                Expanded(
                  child: Container(
                    height: 200.0, // Increased height by 4 units
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 232, 235, 242), // Background color
                      borderRadius: BorderRadius.circular(16.0), // Rounded corners
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.timer),
                                SizedBox(width: 8.0),
                                Text(
                                  '00:00:00',
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 8.0), // Adjust space between timer and button
                          ElevatedButton(
                            onPressed: () {
                              // Handle button press
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF123668), // Blue color with hex code
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0), // Rounded corners
                              ),
                              shadowColor: Colors.grey.withOpacity(0.5), // Drop shadow color
                              elevation: 4.0, // Adjust shadow depth as needed
                              // Constrain button width and respect set height
                              minimumSize: Size(100.0, 54.0), // Adjust width and height as needed
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                              child: Text(
                                'Start',
                                style: TextStyle(
                                  color: Colors.white, // White text
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
