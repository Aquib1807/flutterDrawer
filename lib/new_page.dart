import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(title),
      ),
    );
  }
}
