// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Video {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uri uri) url,
    required TResult Function(String id, num? episodeId) vod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri uri)? url,
    TResult? Function(String id, num? episodeId)? vod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri uri)? url,
    TResult Function(String id, num? episodeId)? vod,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IvsUri value) url,
    required TResult Function(VodId value) vod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IvsUri value)? url,
    TResult? Function(VodId value)? vod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IvsUri value)? url,
    TResult Function(VodId value)? vod,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCopyWith<$Res> {
  factory $VideoCopyWith(Video value, $Res Function(Video) then) =
      _$VideoCopyWithImpl<$Res, Video>;
}

/// @nodoc
class _$VideoCopyWithImpl<$Res, $Val extends Video>
    implements $VideoCopyWith<$Res> {
  _$VideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IvsUriCopyWith<$Res> {
  factory _$$IvsUriCopyWith(_$IvsUri value, $Res Function(_$IvsUri) then) =
      __$$IvsUriCopyWithImpl<$Res>;
  @useResult
  $Res call({Uri uri});
}

/// @nodoc
class __$$IvsUriCopyWithImpl<$Res> extends _$VideoCopyWithImpl<$Res, _$IvsUri>
    implements _$$IvsUriCopyWith<$Res> {
  __$$IvsUriCopyWithImpl(_$IvsUri _value, $Res Function(_$IvsUri) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
  }) {
    return _then(_$IvsUri(
      null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc

class _$IvsUri extends IvsUri {
  const _$IvsUri(this.uri) : super._();

  @override
  final Uri uri;

  @override
  String toString() {
    return 'Video.url(uri: $uri)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IvsUri &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IvsUriCopyWith<_$IvsUri> get copyWith =>
      __$$IvsUriCopyWithImpl<_$IvsUri>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uri uri) url,
    required TResult Function(String id, num? episodeId) vod,
  }) {
    return url(uri);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri uri)? url,
    TResult? Function(String id, num? episodeId)? vod,
  }) {
    return url?.call(uri);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri uri)? url,
    TResult Function(String id, num? episodeId)? vod,
    required TResult orElse(),
  }) {
    if (url != null) {
      return url(uri);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IvsUri value) url,
    required TResult Function(VodId value) vod,
  }) {
    return url(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IvsUri value)? url,
    TResult? Function(VodId value)? vod,
  }) {
    return url?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IvsUri value)? url,
    TResult Function(VodId value)? vod,
    required TResult orElse(),
  }) {
    if (url != null) {
      return url(this);
    }
    return orElse();
  }
}

abstract class IvsUri extends Video {
  const factory IvsUri(final Uri uri) = _$IvsUri;
  const IvsUri._() : super._();

  Uri get uri;
  @JsonKey(ignore: true)
  _$$IvsUriCopyWith<_$IvsUri> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VodIdCopyWith<$Res> {
  factory _$$VodIdCopyWith(_$VodId value, $Res Function(_$VodId) then) =
      __$$VodIdCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, num? episodeId});
}

/// @nodoc
class __$$VodIdCopyWithImpl<$Res> extends _$VideoCopyWithImpl<$Res, _$VodId>
    implements _$$VodIdCopyWith<$Res> {
  __$$VodIdCopyWithImpl(_$VodId _value, $Res Function(_$VodId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? episodeId = freezed,
  }) {
    return _then(_$VodId(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      episodeId: freezed == episodeId
          ? _value.episodeId
          : episodeId // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc

class _$VodId extends VodId {
  const _$VodId(this.id, {this.episodeId}) : super._();

  @override
  final String id;
  @override
  final num? episodeId;

  @override
  String toString() {
    return 'Video.vod(id: $id, episodeId: $episodeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VodId &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.episodeId, episodeId) ||
                other.episodeId == episodeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, episodeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VodIdCopyWith<_$VodId> get copyWith =>
      __$$VodIdCopyWithImpl<_$VodId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uri uri) url,
    required TResult Function(String id, num? episodeId) vod,
  }) {
    return vod(id, episodeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri uri)? url,
    TResult? Function(String id, num? episodeId)? vod,
  }) {
    return vod?.call(id, episodeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri uri)? url,
    TResult Function(String id, num? episodeId)? vod,
    required TResult orElse(),
  }) {
    if (vod != null) {
      return vod(id, episodeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IvsUri value) url,
    required TResult Function(VodId value) vod,
  }) {
    return vod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IvsUri value)? url,
    TResult? Function(VodId value)? vod,
  }) {
    return vod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IvsUri value)? url,
    TResult Function(VodId value)? vod,
    required TResult orElse(),
  }) {
    if (vod != null) {
      return vod(this);
    }
    return orElse();
  }
}

abstract class VodId extends Video {
  const factory VodId(final String id, {final num? episodeId}) = _$VodId;
  const VodId._() : super._();

  String get id;
  num? get episodeId;
  @JsonKey(ignore: true)
  _$$VodIdCopyWith<_$VodId> get copyWith => throw _privateConstructorUsedError;
}
