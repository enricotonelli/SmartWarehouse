// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authenticate_email_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthenticateEmailState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthenticateEmailState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthenticateEmailState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthenticateEmailState()';
}


}

/// @nodoc
class $AuthenticateEmailStateCopyWith<$Res>  {
$AuthenticateEmailStateCopyWith(AuthenticateEmailState _, $Res Function(AuthenticateEmailState) __);
}


/// Adds pattern-matching-related methods to [AuthenticateEmailState].
extension AuthenticateEmailStatePatterns on AuthenticateEmailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InitialAuthenticateEmailState value)?  initial,TResult Function( LoadingAuthenticateEmailState value)?  loading,TResult Function( SuccessAuthenticateEmailState value)?  success,TResult Function( FailAuthenticateEmailState value)?  fail,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InitialAuthenticateEmailState() when initial != null:
return initial(_that);case LoadingAuthenticateEmailState() when loading != null:
return loading(_that);case SuccessAuthenticateEmailState() when success != null:
return success(_that);case FailAuthenticateEmailState() when fail != null:
return fail(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InitialAuthenticateEmailState value)  initial,required TResult Function( LoadingAuthenticateEmailState value)  loading,required TResult Function( SuccessAuthenticateEmailState value)  success,required TResult Function( FailAuthenticateEmailState value)  fail,}){
final _that = this;
switch (_that) {
case InitialAuthenticateEmailState():
return initial(_that);case LoadingAuthenticateEmailState():
return loading(_that);case SuccessAuthenticateEmailState():
return success(_that);case FailAuthenticateEmailState():
return fail(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InitialAuthenticateEmailState value)?  initial,TResult? Function( LoadingAuthenticateEmailState value)?  loading,TResult? Function( SuccessAuthenticateEmailState value)?  success,TResult? Function( FailAuthenticateEmailState value)?  fail,}){
final _that = this;
switch (_that) {
case InitialAuthenticateEmailState() when initial != null:
return initial(_that);case LoadingAuthenticateEmailState() when loading != null:
return loading(_that);case SuccessAuthenticateEmailState() when success != null:
return success(_that);case FailAuthenticateEmailState() when fail != null:
return fail(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  success,TResult Function( LoginFailure failure)?  fail,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InitialAuthenticateEmailState() when initial != null:
return initial();case LoadingAuthenticateEmailState() when loading != null:
return loading();case SuccessAuthenticateEmailState() when success != null:
return success();case FailAuthenticateEmailState() when fail != null:
return fail(_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  success,required TResult Function( LoginFailure failure)  fail,}) {final _that = this;
switch (_that) {
case InitialAuthenticateEmailState():
return initial();case LoadingAuthenticateEmailState():
return loading();case SuccessAuthenticateEmailState():
return success();case FailAuthenticateEmailState():
return fail(_that.failure);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( LoginFailure failure)?  fail,}) {final _that = this;
switch (_that) {
case InitialAuthenticateEmailState() when initial != null:
return initial();case LoadingAuthenticateEmailState() when loading != null:
return loading();case SuccessAuthenticateEmailState() when success != null:
return success();case FailAuthenticateEmailState() when fail != null:
return fail(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class InitialAuthenticateEmailState with DiagnosticableTreeMixin implements AuthenticateEmailState {
  const InitialAuthenticateEmailState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthenticateEmailState.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitialAuthenticateEmailState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthenticateEmailState.initial()';
}


}




/// @nodoc


class LoadingAuthenticateEmailState with DiagnosticableTreeMixin implements AuthenticateEmailState {
  const LoadingAuthenticateEmailState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthenticateEmailState.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingAuthenticateEmailState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthenticateEmailState.loading()';
}


}




/// @nodoc


class SuccessAuthenticateEmailState with DiagnosticableTreeMixin implements AuthenticateEmailState {
  const SuccessAuthenticateEmailState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthenticateEmailState.success'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessAuthenticateEmailState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthenticateEmailState.success()';
}


}




/// @nodoc


class FailAuthenticateEmailState with DiagnosticableTreeMixin implements AuthenticateEmailState {
  const FailAuthenticateEmailState(this.failure);
  

 final  LoginFailure failure;

/// Create a copy of AuthenticateEmailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailAuthenticateEmailStateCopyWith<FailAuthenticateEmailState> get copyWith => _$FailAuthenticateEmailStateCopyWithImpl<FailAuthenticateEmailState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthenticateEmailState.fail'))
    ..add(DiagnosticsProperty('failure', failure));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FailAuthenticateEmailState&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthenticateEmailState.fail(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $FailAuthenticateEmailStateCopyWith<$Res> implements $AuthenticateEmailStateCopyWith<$Res> {
  factory $FailAuthenticateEmailStateCopyWith(FailAuthenticateEmailState value, $Res Function(FailAuthenticateEmailState) _then) = _$FailAuthenticateEmailStateCopyWithImpl;
@useResult
$Res call({
 LoginFailure failure
});




}
/// @nodoc
class _$FailAuthenticateEmailStateCopyWithImpl<$Res>
    implements $FailAuthenticateEmailStateCopyWith<$Res> {
  _$FailAuthenticateEmailStateCopyWithImpl(this._self, this._then);

  final FailAuthenticateEmailState _self;
  final $Res Function(FailAuthenticateEmailState) _then;

/// Create a copy of AuthenticateEmailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(FailAuthenticateEmailState(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as LoginFailure,
  ));
}


}

// dart format on
