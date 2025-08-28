// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'random_image_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RandomImageViewModelState {

 Uint8List? get imageBinaryData;// 랜덤 이미지
 int get fetchedTimes;// 몇 번 가져왔는지
 bool get isLoading;// 이미지 로딩중일때 활성
 String? get snackbarMessage;
/// Create a copy of RandomImageViewModelState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RandomImageViewModelStateCopyWith<RandomImageViewModelState> get copyWith => _$RandomImageViewModelStateCopyWithImpl<RandomImageViewModelState>(this as RandomImageViewModelState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RandomImageViewModelState&&const DeepCollectionEquality().equals(other.imageBinaryData, imageBinaryData)&&(identical(other.fetchedTimes, fetchedTimes) || other.fetchedTimes == fetchedTimes)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.snackbarMessage, snackbarMessage) || other.snackbarMessage == snackbarMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(imageBinaryData),fetchedTimes,isLoading,snackbarMessage);

@override
String toString() {
  return 'RandomImageViewModelState(imageBinaryData: $imageBinaryData, fetchedTimes: $fetchedTimes, isLoading: $isLoading, snackbarMessage: $snackbarMessage)';
}


}

/// @nodoc
abstract mixin class $RandomImageViewModelStateCopyWith<$Res>  {
  factory $RandomImageViewModelStateCopyWith(RandomImageViewModelState value, $Res Function(RandomImageViewModelState) _then) = _$RandomImageViewModelStateCopyWithImpl;
@useResult
$Res call({
 Uint8List? imageBinaryData, int fetchedTimes, bool isLoading, String? snackbarMessage
});




}
/// @nodoc
class _$RandomImageViewModelStateCopyWithImpl<$Res>
    implements $RandomImageViewModelStateCopyWith<$Res> {
  _$RandomImageViewModelStateCopyWithImpl(this._self, this._then);

  final RandomImageViewModelState _self;
  final $Res Function(RandomImageViewModelState) _then;

/// Create a copy of RandomImageViewModelState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imageBinaryData = freezed,Object? fetchedTimes = null,Object? isLoading = null,Object? snackbarMessage = freezed,}) {
  return _then(_self.copyWith(
imageBinaryData: freezed == imageBinaryData ? _self.imageBinaryData : imageBinaryData // ignore: cast_nullable_to_non_nullable
as Uint8List?,fetchedTimes: null == fetchedTimes ? _self.fetchedTimes : fetchedTimes // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,snackbarMessage: freezed == snackbarMessage ? _self.snackbarMessage : snackbarMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RandomImageViewModelState].
extension RandomImageViewModelStatePatterns on RandomImageViewModelState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RandomImagePageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RandomImagePageState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RandomImagePageState value)  $default,){
final _that = this;
switch (_that) {
case _RandomImagePageState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RandomImagePageState value)?  $default,){
final _that = this;
switch (_that) {
case _RandomImagePageState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Uint8List? imageBinaryData,  int fetchedTimes,  bool isLoading,  String? snackbarMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RandomImagePageState() when $default != null:
return $default(_that.imageBinaryData,_that.fetchedTimes,_that.isLoading,_that.snackbarMessage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Uint8List? imageBinaryData,  int fetchedTimes,  bool isLoading,  String? snackbarMessage)  $default,) {final _that = this;
switch (_that) {
case _RandomImagePageState():
return $default(_that.imageBinaryData,_that.fetchedTimes,_that.isLoading,_that.snackbarMessage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Uint8List? imageBinaryData,  int fetchedTimes,  bool isLoading,  String? snackbarMessage)?  $default,) {final _that = this;
switch (_that) {
case _RandomImagePageState() when $default != null:
return $default(_that.imageBinaryData,_that.fetchedTimes,_that.isLoading,_that.snackbarMessage);case _:
  return null;

}
}

}

/// @nodoc


class _RandomImagePageState implements RandomImageViewModelState {
  const _RandomImagePageState({this.imageBinaryData, this.fetchedTimes = 0, this.isLoading = false, this.snackbarMessage});
  

@override final  Uint8List? imageBinaryData;
// 랜덤 이미지
@override@JsonKey() final  int fetchedTimes;
// 몇 번 가져왔는지
@override@JsonKey() final  bool isLoading;
// 이미지 로딩중일때 활성
@override final  String? snackbarMessage;

/// Create a copy of RandomImageViewModelState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RandomImagePageStateCopyWith<_RandomImagePageState> get copyWith => __$RandomImagePageStateCopyWithImpl<_RandomImagePageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RandomImagePageState&&const DeepCollectionEquality().equals(other.imageBinaryData, imageBinaryData)&&(identical(other.fetchedTimes, fetchedTimes) || other.fetchedTimes == fetchedTimes)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.snackbarMessage, snackbarMessage) || other.snackbarMessage == snackbarMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(imageBinaryData),fetchedTimes,isLoading,snackbarMessage);

@override
String toString() {
  return 'RandomImageViewModelState(imageBinaryData: $imageBinaryData, fetchedTimes: $fetchedTimes, isLoading: $isLoading, snackbarMessage: $snackbarMessage)';
}


}

/// @nodoc
abstract mixin class _$RandomImagePageStateCopyWith<$Res> implements $RandomImageViewModelStateCopyWith<$Res> {
  factory _$RandomImagePageStateCopyWith(_RandomImagePageState value, $Res Function(_RandomImagePageState) _then) = __$RandomImagePageStateCopyWithImpl;
@override @useResult
$Res call({
 Uint8List? imageBinaryData, int fetchedTimes, bool isLoading, String? snackbarMessage
});




}
/// @nodoc
class __$RandomImagePageStateCopyWithImpl<$Res>
    implements _$RandomImagePageStateCopyWith<$Res> {
  __$RandomImagePageStateCopyWithImpl(this._self, this._then);

  final _RandomImagePageState _self;
  final $Res Function(_RandomImagePageState) _then;

/// Create a copy of RandomImageViewModelState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imageBinaryData = freezed,Object? fetchedTimes = null,Object? isLoading = null,Object? snackbarMessage = freezed,}) {
  return _then(_RandomImagePageState(
imageBinaryData: freezed == imageBinaryData ? _self.imageBinaryData : imageBinaryData // ignore: cast_nullable_to_non_nullable
as Uint8List?,fetchedTimes: null == fetchedTimes ? _self.fetchedTimes : fetchedTimes // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,snackbarMessage: freezed == snackbarMessage ? _self.snackbarMessage : snackbarMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
