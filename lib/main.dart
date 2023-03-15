import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main.g.dart';

@riverpod
int other(OtherRef ref) {
  return 3;
}

@riverpod
class Something extends _$Something {
  @override
  Future<int> build() async {
    ref.watch(otherProvider);
    return 0;
  }

  void increase() {
    state = AsyncValue.data(state.asData!.value + 1);
  }
}

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends HookConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(somethingProvider);
    final count = state.valueOrNull;
    final notifier = ref.watch(somethingProvider.notifier);

    useEffect(() {
      () async {
        await Future.delayed(Duration(seconds: 1));
        ref.read(somethingProvider.notifier).increase();
      }();
      return () {
        print('disposed');
      };
    }, const []);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$count'),
          ElevatedButton(
            onPressed: notifier.increase,
            child: Text('Up'),
          ),
        ],
      ),
    );
  }
}
