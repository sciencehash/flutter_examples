import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Multi-theme example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home Page"),
            SizedBox(height: 40),
            TextButton.icon(
              icon: Icon(Icons.brightness_6),
              label: Text('Next Theme'),
              onPressed: () {
                // Change to the next theme
                ThemeProvider.controllerOf(context).nextTheme();
              },
            ),
            SizedBox(height: 15),
            TextButton.icon(
              icon: Icon(Icons.brightness_6),
              label: Text('Select Theme'),
              onPressed: () {
                // Show a dialog with the theme list
                showDialog(
                  context: context,
                  builder: (_) => ThemeDialog(),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
