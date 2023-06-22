// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$someHash() => r'28542293d12b199af4b97ff4675468796584c74f';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef SomeRef = AutoDisposeProviderRef<int>;

/// See also [some].
@ProviderFor(some)
const someProvider = SomeFamily();

/// See also [some].
class SomeFamily extends Family<int> {
  /// See also [some].
  const SomeFamily();

  /// See also [some].
  SomeProvider call(
    dynamic vodOrEpisode,
  ) {
    return SomeProvider(
      vodOrEpisode,
    );
  }

  @override
  SomeProvider getProviderOverride(
    covariant SomeProvider provider,
  ) {
    return call(
      provider.vodOrEpisode,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'someProvider';
}

/// See also [some].
class SomeProvider extends AutoDisposeProvider<int> {
  /// See also [some].
  SomeProvider(
    this.vodOrEpisode,
  ) : super.internal(
          (ref) => some(
            ref,
            vodOrEpisode,
          ),
          from: someProvider,
          name: r'someProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$someHash,
          dependencies: SomeFamily._dependencies,
          allTransitiveDependencies: SomeFamily._allTransitiveDependencies,
        );

  final dynamic vodOrEpisode;

  @override
  bool operator ==(Object other) {
    return other is SomeProvider && other.vodOrEpisode == vodOrEpisode;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, vodOrEpisode.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$anotherHash() => r'93a06550d54e3c8ab5b65cb279158f0ae22c6936';

abstract class _$Another extends BuildlessAutoDisposeNotifier<int> {
  late final dynamic vodOrEpisode;

  int build(
    dynamic vodOrEpisode,
  );
}

/// See also [Another].
@ProviderFor(Another)
const anotherProvider = AnotherFamily();

/// See also [Another].
class AnotherFamily extends Family<int> {
  /// See also [Another].
  const AnotherFamily();

  /// See also [Another].
  AnotherProvider call(
    dynamic vodOrEpisode,
  ) {
    return AnotherProvider(
      vodOrEpisode,
    );
  }

  @override
  AnotherProvider getProviderOverride(
    covariant AnotherProvider provider,
  ) {
    return call(
      provider.vodOrEpisode,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'anotherProvider';
}

/// See also [Another].
class AnotherProvider extends AutoDisposeNotifierProviderImpl<Another, int> {
  /// See also [Another].
  AnotherProvider(
    this.vodOrEpisode,
  ) : super.internal(
          () => Another()..vodOrEpisode = vodOrEpisode,
          from: anotherProvider,
          name: r'anotherProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$anotherHash,
          dependencies: AnotherFamily._dependencies,
          allTransitiveDependencies: AnotherFamily._allTransitiveDependencies,
        );

  final dynamic vodOrEpisode;

  @override
  bool operator ==(Object other) {
    return other is AnotherProvider && other.vodOrEpisode == vodOrEpisode;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, vodOrEpisode.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  int runNotifierBuild(
    covariant Another notifier,
  ) {
    return notifier.build(
      vodOrEpisode,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
