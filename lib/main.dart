import 'package:flutter/material.dart';

void main() {
  runApp(Test2App());
}

class Test2App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test2',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[800], // Dark gray background
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800], // Dark gray background
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'PROJECTETE',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.orange), // Orange text color
            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/logo.png', // Assuming you have a logo image in the assets folder
              width: 150,
              height: 150,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EnterNamePage()), // Navigate to EnterNamePage
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white), // White button background color
              ),
              child: Text('START'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Add functionality for the second button
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white), // White button background color
              ),
              child: Text('OPTIONS'),
            ),
          ],
        ),
      ),
    );
  }
}

class EnterNamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800], // Dark gray background
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Select Your Team:',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Implement functionality for Team A selection
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: Text('Team A'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    // Implement functionality for Team B selection
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: Text('Team B'),
                ),
              ],
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your name...',
                hintStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NeverHaveIEverPage()), // Navigate to NeverHaveIEverPage
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white), // White button background color
              ),
              child: Text('NEXT'),
            ),
          ],
        ),
      ),
    );
  }
}

class NeverHaveIEverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800], // Dark gray background
      appBar: AppBar(
        title: Text('NEVER HAVE I EVER'),
      ),
      body: Center(
        child: Text(
          'This page is empty for now.',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
