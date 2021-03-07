import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var controller = ThemeProvider.controllerOf(context);

    return Scaffold(
      appBar: AppBar(title: Text("Speech Driver")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // _buildButton(
            //   text: "Next Theme",
            //   onPressed: controller.nextTheme,
            // ),
            // _buildButton(
            //   text: "Theme Dialog",
            //   onPressed: () {
            //     showDialog(context: context, builder: (_) => ThemeDialog());
            //   },
            // ),
            // _buildButton(
            //   text: "Second Screen",
            //   onPressed: () {
            //     Navigator.push(
            //         context, MaterialPageRoute(builder: (_) => SecondPage()));
            //   },
            // ),
            // Divider(),
            // Text('Current theme: ${controller.theme.id}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.menu),
        onPressed: () {
          // showDialog(context: context, builder: (_) => ThemeDialog());
          ThemeProvider.controllerOf(context).nextTheme();
        },
      ),
    );
  }
}