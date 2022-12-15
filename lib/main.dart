import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends HookWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tapped = useState<bool?>(null);
    final logs = useState([]);

    useEffect(() {
      if (tapped.value == true) {
        // logs.value = [...logs.value, 'useEffect tap'];
        print('mount 1: ${logs.value}');
      } else if (tapped.value == false) {
        // logs.value = [...logs.value, 'useEffect tap 2'];
        print('mount 2: ${logs.value}');
      }
      return () {
        // logs.value = [...logs.value, 'useEffect unmount'];
        print('unmount: ${logs.value}');
      };
    }, [tapped.value != true]);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print('tap');
                    tapped.value = tapped.value != true;
                  },
                  child: Text('Tap me'),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: logs.value.length,
                  itemBuilder: ((context, index) => Text(logs.value[index])),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
