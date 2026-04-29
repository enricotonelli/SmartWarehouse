// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState()';
}


}

/// @nodoc
class $AuthStateCopyWith<$Res>  {
$AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( EmptyAuthState value)?  empty,TResult Function( SuccessAuthState value)?  data,required TResult orElse(),}){
final _that = this;
switch (_that) {
case EmptyAuthState() when empty != null:
return empty(_that);case SuccessAuthState() when data != null:
return data(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( EmptyAuthState value)  empty,required TResult Function( SuccessAuthState value)  data,}){
final _that = this;
switch (_that) {
case EmptyAuthState():
return empty(_that);case SuccessAuthState():
return data(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( EmptyAuthState value)?  empty,TResult? Function( SuccessAuthState value)?  data,}){
final _that = this;
switch (_that) {
case EmptyAuthState() when empty != null:
return empty(_that);case SuccessAuthState() when data != null:
return data(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  empty,TResult Function( AuthData authData,  bool hasUpdated)?  data,required TResult orElse(),}) {final _that = this;
switch (_that) {
case EmptyAuthState() when empty != null:
return empty();case SuccessAuthState() when data != null:
return data(_that.authData,_that.hasUpdated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  empty,required TResult Function( AuthData authData,  bool hasUpdated)  data,}) {final _that = this;
switch (_that) {
case EmptyAuthState():
return empty();case SuccessAuthState():
return data(_that.authData,_that.hasUpdated);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  empty,TResult? Function( AuthData authData,  bool hasUpdated)?  data,}) {final _that = this;
switch (_that) {
case EmptyAuthState() when empty != null:
return empty();case SuccessAuthState() when data != null:
return data(_that.authData,_that.hasUpdated);case _:
  return null;

}
}

}

/// @nodoc


class EmptyAuthState implements AuthState {
  const EmptyAuthState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmptyAuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.empty()';
}


}




/// @nodoc


class SuccessAuthState implements AuthState {
  const SuccessAuthState(this.authData, {required this.hasUpdated});
  

 final  AuthData authData;
 final  bool hasUpdated;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessAuthStateCopyWith<SuccessAuthState> get copyWith => _$SuccessAuthStateCopyWithImpl<SuccessAuthState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessAuthState&&(identical(other.authData, authData) || other.authData == authData)&&(identical(other.hasUpdated, hasUpdated) || other.hasUpdated == hasUpdated));
}


@override
int get hashCode => Object.hash(runtimeType,authData,hasUpdated);

@override
String toString() {
  return 'AuthState.data(authData: $authData, hasUpdated: $hasUpdated)';
}


}

/// @nodoc
abstract mixin class $SuccessAuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $SuccessAuthStateCopyWith(SuccessAuthState value, $Res Function(SuccessAuthState) _then) = _$SuccessAuthStateCopyWithImpl;
@useResult
$Res call({
 AuthData authData, bool hasUpdated
});




}
/// @nodoc
class _$SuccessAuthStateCopyWithImpl<$Res>
    implements $SuccessAuthStateCopyWith<$Res> {
  _$SuccessAuthStateCopyWithImpl(this._self, this._then);

  final SuccessAuthState _self;
  final $Res Function(SuccessAuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? authData = null,Object? hasUpdated = null,}) {
  return _then(SuccessAuthState(
null == authData ? _self.authData : authData // ignore: cast_nullable_to_non_nullable
as AuthData,hasUpdated: null == hasUpdated ? _self.hasUpdated : hasUpdated // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
