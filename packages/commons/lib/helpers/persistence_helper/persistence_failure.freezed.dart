// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'persistence_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PersistenceFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersistenceFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PersistenceFailure()';
}


}

/// @nodoc
class $PersistenceFailureCopyWith<$Res>  {
$PersistenceFailureCopyWith(PersistenceFailure _, $Res Function(PersistenceFailure) __);
}


/// Adds pattern-matching-related methods to [PersistenceFailure].
extension PersistenceFailurePatterns on PersistenceFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NotFoundPersistenceFailure value)?  notFound,TResult Function( TypeMismatchPersistenceFailure value)?  typeMismatch,TResult Function( OtherPersistenceFailure value)?  other,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NotFoundPersistenceFailure() when notFound != null:
return notFound(_that);case TypeMismatchPersistenceFailure() when typeMismatch != null:
return typeMismatch(_that);case OtherPersistenceFailure() when other != null:
return other(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NotFoundPersistenceFailure value)  notFound,required TResult Function( TypeMismatchPersistenceFailure value)  typeMismatch,required TResult Function( OtherPersistenceFailure value)  other,}){
final _that = this;
switch (_that) {
case NotFoundPersistenceFailure():
return notFound(_that);case TypeMismatchPersistenceFailure():
return typeMismatch(_that);case OtherPersistenceFailure():
return other(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NotFoundPersistenceFailure value)?  notFound,TResult? Function( TypeMismatchPersistenceFailure value)?  typeMismatch,TResult? Function( OtherPersistenceFailure value)?  other,}){
final _that = this;
switch (_that) {
case NotFoundPersistenceFailure() when notFound != null:
return notFound(_that);case TypeMismatchPersistenceFailure() when typeMismatch != null:
return typeMismatch(_that);case OtherPersistenceFailure() when other != null:
return other(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  notFound,TResult Function()?  typeMismatch,TResult Function( String error)?  other,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NotFoundPersistenceFailure() when notFound != null:
return notFound();case TypeMismatchPersistenceFailure() when typeMismatch != null:
return typeMismatch();case OtherPersistenceFailure() when other != null:
return other(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  notFound,required TResult Function()  typeMismatch,required TResult Function( String error)  other,}) {final _that = this;
switch (_that) {
case NotFoundPersistenceFailure():
return notFound();case TypeMismatchPersistenceFailure():
return typeMismatch();case OtherPersistenceFailure():
return other(_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  notFound,TResult? Function()?  typeMismatch,TResult? Function( String error)?  other,}) {final _that = this;
switch (_that) {
case NotFoundPersistenceFailure() when notFound != null:
return notFound();case TypeMismatchPersistenceFailure() when typeMismatch != null:
return typeMismatch();case OtherPersistenceFailure() when other != null:
return other(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class NotFoundPersistenceFailure implements PersistenceFailure {
  const NotFoundPersistenceFailure();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotFoundPersistenceFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PersistenceFailure.notFound()';
}


}




/// @nodoc


class TypeMismatchPersistenceFailure implements PersistenceFailure {
  const TypeMismatchPersistenceFailure();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TypeMismatchPersistenceFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PersistenceFailure.typeMismatch()';
}


}




/// @nodoc


class OtherPersistenceFailure implements PersistenceFailure {
  const OtherPersistenceFailure(this.error);
  

 final  String error;

/// Create a copy of PersistenceFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtherPersistenceFailureCopyWith<OtherPersistenceFailure> get copyWith => _$OtherPersistenceFailureCopyWithImpl<OtherPersistenceFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtherPersistenceFailure&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'PersistenceFailure.other(error: $error)';
}


}

/// @nodoc
abstract mixin class $OtherPersistenceFailureCopyWith<$Res> implements $PersistenceFailureCopyWith<$Res> {
  factory $OtherPersistenceFailureCopyWith(OtherPersistenceFailure value, $Res Function(OtherPersistenceFailure) _then) = _$OtherPersistenceFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$OtherPersistenceFailureCopyWithImpl<$Res>
    implements $OtherPersistenceFailureCopyWith<$Res> {
  _$OtherPersistenceFailureCopyWithImpl(this._self, this._then);

  final OtherPersistenceFailure _self;
  final $Res Function(OtherPersistenceFailure) _then;

/// Create a copy of PersistenceFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(OtherPersistenceFailure(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
