// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Support _$SupportFromJson(Map<String, dynamic> json) {
  return _Support.fromJson(json);
}

/// @nodoc
mixin _$Support {
  int get id => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupportCopyWith<Support> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportCopyWith<$Res> {
  factory $SupportCopyWith(Support value, $Res Function(Support) then) =
      _$SupportCopyWithImpl<$Res, Support>;
  @useResult
  $Res call({int id, String subject, String message});
}

/// @nodoc
class _$SupportCopyWithImpl<$Res, $Val extends Support>
    implements $SupportCopyWith<$Res> {
  _$SupportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? subject = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SupportCopyWith<$Res> implements $SupportCopyWith<$Res> {
  factory _$$_SupportCopyWith(
          _$_Support value, $Res Function(_$_Support) then) =
      __$$_SupportCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String subject, String message});
}

/// @nodoc
class __$$_SupportCopyWithImpl<$Res>
    extends _$SupportCopyWithImpl<$Res, _$_Support>
    implements _$$_SupportCopyWith<$Res> {
  __$$_SupportCopyWithImpl(_$_Support _value, $Res Function(_$_Support) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? subject = null,
    Object? message = null,
  }) {
    return _then(_$_Support(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Support implements _Support {
  const _$_Support(
      {required this.id, required this.subject, required this.message});

  factory _$_Support.fromJson(Map<String, dynamic> json) =>
      _$$_SupportFromJson(json);

  @override
  final int id;
  @override
  final String subject;
  @override
  final String message;

  @override
  String toString() {
    return 'Support(id: $id, subject: $subject, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Support &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, subject, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SupportCopyWith<_$_Support> get copyWith =>
      __$$_SupportCopyWithImpl<_$_Support>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SupportToJson(
      this,
    );
  }
}

abstract class _Support implements Support {
  const factory _Support(
      {required final int id,
      required final String subject,
      required final String message}) = _$_Support;

  factory _Support.fromJson(Map<String, dynamic> json) = _$_Support.fromJson;

  @override
  int get id;
  @override
  String get subject;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_SupportCopyWith<_$_Support> get copyWith =>
      throw _privateConstructorUsedError;
}
