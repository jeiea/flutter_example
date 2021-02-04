import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Hook example',
        home: HookBuilder(builder: (_) {
          final value = useCustom();
          return Scaffold(
            body: Center(
                child: Column(mainAxisSize: MainAxisSize.min, children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('count: $value'),
              )
            ])),
          );
        }));
  }
}

useCustom() {
  return use(_Custom());
}

class _Custom extends Hook<int> {
  const _Custom();

  @override
  _CustomState createState() => _CustomState();
}

class _CustomState extends HookState<int, _Custom> {
  @override
  int build(BuildContext context) {
    final s = useState(5);
    return s.value;
  }
}
