// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_bar_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NavigationBarOption {

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NavigationBarOption);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NavigationBarOption()';
}


}

/// @nodoc
class $NavigationBarOptionCopyWith<$Res>  {
$NavigationBarOptionCopyWith(NavigationBarOption _, $Res Function(NavigationBarOption) __);
}


/// Adds pattern-matching-related methods to [NavigationBarOption].
extension NavigationBarOptionPatterns on NavigationBarOption {

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HomeNavigationBarOption value)?  home,TResult Function( ProductsNavigationBarOption value)?  products,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HomeNavigationBarOption() when home != null:
return home(_that);case ProductsNavigationBarOption() when products != null:
return products(_that);case _:
  return orElse();

}
}

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HomeNavigationBarOption value)  home,required TResult Function( ProductsNavigationBarOption value)  products,}){
final _that = this;
switch (_that) {
case HomeNavigationBarOption():
return home(_that);case ProductsNavigationBarOption():
return products(_that);}
}

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HomeNavigationBarOption value)?  home,TResult? Function( ProductsNavigationBarOption value)?  products,}){
final _that = this;
switch (_that) {
case HomeNavigationBarOption() when home != null:
return home(_that);case ProductsNavigationBarOption() when products != null:
return products(_that);case _:
  return null;

}
}

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  home,TResult Function()?  products,required TResult orElse(),}) {final _that = this;
switch (_that) {
case HomeNavigationBarOption() when home != null:
return home();case ProductsNavigationBarOption() when products != null:
return products();case _:
  return orElse();

}
}

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  home,required TResult Function()  products,}) {final _that = this;
switch (_that) {
case HomeNavigationBarOption():
return home();case ProductsNavigationBarOption():
return products();}
}

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  home,TResult? Function()?  products,}) {final _that = this;
switch (_that) {
case HomeNavigationBarOption() when home != null:
return home();case ProductsNavigationBarOption() when products != null:
return products();case _:
  return null;

}
}

}

/// @nodoc


class HomeNavigationBarOption extends NavigationBarOption {
  const HomeNavigationBarOption(): super._();

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeNavigationBarOption);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NavigationBarOption.home()';
}


}


/// @nodoc


class ProductsNavigationBarOption extends NavigationBarOption {
  const ProductsNavigationBarOption(): super._();

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsNavigationBarOption);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NavigationBarOption.products()';
}


}


// dart format on
