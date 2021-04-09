import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

Route slideRoute(
    {RouteSettings? settings, required Widget Function() builder}) {
  return PageRouteBuilder(
    settings: settings,
    pageBuilder: (_, __, ___) => builder(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1, 0),
        end: Offset.zero,
      ).animate(CurvedAnimation(
          parent: animation,
          curve: Curves.easeOutExpo,
          reverseCurve: Curves.easeInExpo)),
      child: child,
    ),
    transitionDuration: const Duration(milliseconds: 500),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return PageRouteBuilder(
            settings: settings,
            pageBuilder: (_, __, ___) => MyHomePage(),
            transitionDuration: Duration(milliseconds: 0),
            reverseTransitionDuration: Duration(milliseconds: 0),
          );
        }
        if (settings.name == '/second') {
          return slideRoute(settings: settings, builder: () => MyHomePage());
        }
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final points = <String>[];

  @override
  void initState() {
    super.initState();

    (() async {
      for (int i = 0; i < 4; i++) {
        await Future.delayed(const Duration(milliseconds: 100));
        setState(() {
          recordPoint('future');
        });
      }
    })();
  }

  void recordPoint(String prefix) {
    final route = ModalRoute.of(context);
    final value = route?.animation?.value;
    if (value != null) {
      points.add('$prefix $value');
    }
  }

  @override
  Widget build(BuildContext context) {
    final route = ModalRoute.of(context);

    recordPoint('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('animation should'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (route?.settings.name == '/')
              ElevatedButton(
                onPressed: () async {
                  await Navigator.pushNamed(context, '/second');
                },
                child: Text('Start transition'),
              ),
            ...points.map((x) => Text(x)).toList(),
          ],
        ),
      ),
    );
  }
}
