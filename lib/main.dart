import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    KakaoContext.clientId = '<kakap_app_key>';
  }

  void _login() async {
    final authCode =
        await AuthCodeClient.instance.requestWithTalk(scopes: ['profile']);
    final token = await AuthApi.instance.issueAccessToken(authCode);
    await TokenManager.instance.setToken(token);
    final secondToken = await TokenManager.instance.getToken();
    final response =
        await AuthApi.instance.refreshAccessToken(secondToken.refreshToken!);
    await TokenManager.instance.setToken(response);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _login,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
