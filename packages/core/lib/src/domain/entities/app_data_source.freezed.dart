// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_data_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppDataSource {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppDataSource);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppDataSource()';
}


}

/// @nodoc
class $AppDataSourceCopyWith<$Res>  {
$AppDataSourceCopyWith(AppDataSource _, $Res Function(AppDataSource) __);
}


/// Adds pattern-matching-related methods to [AppDataSource].
extension AppDataSourcePatterns on AppDataSource {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MockAppDataSource value)?  mock,TResult Function( RemoteAppDataSource value)?  remote,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MockAppDataSource() when mock != null:
return mock(_that);case RemoteAppDataSource() when remote != null:
return remote(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MockAppDataSource value)  mock,required TResult Function( RemoteAppDataSource value)  remote,}){
final _that = this;
switch (_that) {
case MockAppDataSource():
return mock(_that);case RemoteAppDataSource():
return remote(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MockAppDataSource value)?  mock,TResult? Function( RemoteAppDataSource value)?  remote,}){
final _that = this;
switch (_that) {
case MockAppDataSource() when mock != null:
return mock(_that);case RemoteAppDataSource() when remote != null:
return remote(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  mock,TResult Function()?  remote,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MockAppDataSource() when mock != null:
return mock();case RemoteAppDataSource() when remote != null:
return remote();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  mock,required TResult Function()  remote,}) {final _that = this;
switch (_that) {
case MockAppDataSource():
return mock();case RemoteAppDataSource():
return remote();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  mock,TResult? Function()?  remote,}) {final _that = this;
switch (_that) {
case MockAppDataSource() when mock != null:
return mock();case RemoteAppDataSource() when remote != null:
return remote();case _:
  return null;

}
}

}

/// @nodoc


class MockAppDataSource extends AppDataSource {
  const MockAppDataSource(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MockAppDataSource);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppDataSource.mock()';
}


}




/// @nodoc


class RemoteAppDataSource extends AppDataSource {
  const RemoteAppDataSource(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoteAppDataSource);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppDataSource.remote()';
}


}




// dart format on
