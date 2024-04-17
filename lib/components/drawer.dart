import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  DrawerScreen({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: DrawerContainer()
    );
  }
}

class DrawerContainer extends StatelessWidget {
  const DrawerContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("General Information"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Rapid Cargo Helpline"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Frequently Asked Questions (FAQs)"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Important Websites"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Feedback"),
            )
          ],
        ),
      ),
    );
  }
}

