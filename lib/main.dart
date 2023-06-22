import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main.freezed.dart';
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

@freezed
sealed class Video with _$Video {
  const factory Video.url(Uri uri) = IvsUri;
  const factory Video.vod(String id, {num? episodeId}) = VodId;

  const Video._();
}

@riverpod
int some(SomeRef ref, VodId vodOrEpisode) {
  return 3;
}

@riverpod
class Another extends _$Another {
  @override
  int build(VodId vodOrEpisode) {
    return 3;
  }
}

class MyWidget extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(someProvider(VodId('', episodeId: 2)));
    ref.watch(anotherProvider(VodId('', episodeId: 2)));

    return Container(
      alignment: Alignment.center,
      child: Column(children: [
        Text(''),
        ElevatedButton(
          onPressed: () {},
          child: Text('Reload'),
        )
      ]),
    );
  }
}
