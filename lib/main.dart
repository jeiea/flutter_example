import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main.g.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: MyWidget(),
      ),
    );
  }
}

@riverpod
Future<(int,)> data(DataRef ref) async {
  await Future.delayed(Duration(seconds: 1));
  return (1,);
}

@riverpod
Future<int> data2(Data2Ref ref) async {
  await Future.delayed(Duration(milliseconds: 500));
  return 2;
}

@riverpod
Future<List<AsyncValue<int>>> data3(Data3Ref ref) async {
  final one = ref.watch(dataProvider);
  final two = ref.watch(data2Provider);
  return [one, two];
}

class MyWidget extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(data3Provider);
    return Container(
      alignment: Alignment.center,
      child: Column(children: [
        Text('$value'),
        ElevatedButton(
          onPressed: () {
            ref.invalidate(dataProvider);
          },
          child: Text('Reload'),
        )
      ]),
    );
  }
}
