import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_bar_option.freezed.dart';

@freezed
sealed class NavigationBarOption with _$NavigationBarOption {
  const NavigationBarOption._();

  const factory NavigationBarOption.home() = HomeNavigationBarOption;

  const factory NavigationBarOption.products() = ProductsNavigationBarOption;

  bool get isHome => maybeWhen(home: () => true, orElse: () => false);

  bool get isProducts => maybeWhen(products: () => true, orElse: () => false);
}
