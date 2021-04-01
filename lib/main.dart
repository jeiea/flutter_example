import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'flutter example',
        home: Scaffold(
            body: Center(
                child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text("Press 'a', Space, Right arrow in android emulator in macos"),
          _Page(),
        ]))));
  }
}

class _Page extends StatefulWidget {
  const _Page();

  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<_Page> {
  final _controller = TextEditingController();

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  void correct(String value) {
    final trimmed = value.trim();
    if (trimmed != _controller.text) {
      _controller.text = trimmed;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      onChanged: correct,
    );
  }
}
