// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_environment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppEnvironment {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppEnvironment);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppEnvironment()';
}


}

/// @nodoc
class $AppEnvironmentCopyWith<$Res>  {
$AppEnvironmentCopyWith(AppEnvironment _, $Res Function(AppEnvironment) __);
}


/// Adds pattern-matching-related methods to [AppEnvironment].
extension AppEnvironmentPatterns on AppEnvironment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DevEnvironment value)?  dev,TResult Function( ProdEnvironment value)?  prod,TResult Function( QAEnvironment value)?  qa,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DevEnvironment() when dev != null:
return dev(_that);case ProdEnvironment() when prod != null:
return prod(_that);case QAEnvironment() when qa != null:
return qa(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DevEnvironment value)  dev,required TResult Function( ProdEnvironment value)  prod,required TResult Function( QAEnvironment value)  qa,}){
final _that = this;
switch (_that) {
case DevEnvironment():
return dev(_that);case ProdEnvironment():
return prod(_that);case QAEnvironment():
return qa(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DevEnvironment value)?  dev,TResult? Function( ProdEnvironment value)?  prod,TResult? Function( QAEnvironment value)?  qa,}){
final _that = this;
switch (_that) {
case DevEnvironment() when dev != null:
return dev(_that);case ProdEnvironment() when prod != null:
return prod(_that);case QAEnvironment() when qa != null:
return qa(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  dev,TResult Function()?  prod,TResult Function()?  qa,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DevEnvironment() when dev != null:
return dev();case ProdEnvironment() when prod != null:
return prod();case QAEnvironment() when qa != null:
return qa();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  dev,required TResult Function()  prod,required TResult Function()  qa,}) {final _that = this;
switch (_that) {
case DevEnvironment():
return dev();case ProdEnvironment():
return prod();case QAEnvironment():
return qa();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  dev,TResult? Function()?  prod,TResult? Function()?  qa,}) {final _that = this;
switch (_that) {
case DevEnvironment() when dev != null:
return dev();case ProdEnvironment() when prod != null:
return prod();case QAEnvironment() when qa != null:
return qa();case _:
  return null;

}
}

}

/// @nodoc


class DevEnvironment implements AppEnvironment {
  const DevEnvironment();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DevEnvironment);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppEnvironment.dev()';
}


}




/// @nodoc


class ProdEnvironment implements AppEnvironment {
  const ProdEnvironment();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProdEnvironment);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppEnvironment.prod()';
}


}




/// @nodoc


class QAEnvironment implements AppEnvironment {
  const QAEnvironment();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QAEnvironment);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppEnvironment.qa()';
}


}




// dart format on
