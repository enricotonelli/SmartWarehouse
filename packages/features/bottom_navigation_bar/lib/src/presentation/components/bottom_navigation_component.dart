import 'package:bottom_navigation_bar/src/domain/entities/navigation_bar_option.dart';
import 'package:cart/cart.dart';
import 'package:design_system/icon/custom_icon.dart';
import 'package:design_system/navigation_bar/custom_navigation_bar.dart';
import 'package:design_system/navigation_bar/navigation_item.dart';
import 'package:flutter/material.dart';

class BottomNavigationComponent extends StatelessWidget {
  const BottomNavigationComponent({
    required this.selectedTab,
    required this.onItemPressed,
    super.key,
  });

  final Function(BuildContext context, NavigationBarOption option) onItemPressed;
  final NavigationBarOption selectedTab;

  @override
  Widget build(BuildContext context) {
    const home = NavigationBarOption.home();
    const products = NavigationBarOption.products();
    const cart = NavigationBarOption.cart();
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: CustomNavigationBar(
        items: [
          NavigationItem(
            icon: CustomIconData.home,
            isActive: selectedTab == home,
            onPressed: () => onItemPressed(context, home),
            title: 'Home',
            selectedIcon: CustomIconData.selectedHome,
          ),
          NavigationItem(
            icon: CustomIconData.buy,
            isActive: selectedTab == products,
            onPressed: () => onItemPressed(context, products),
            title: 'Productos',
            selectedIcon: CustomIconData.buy,
          ),
          CartFeatureBuilder.buildBadge(
            child: NavigationItem(
              icon: CustomIconData.buy,
              isActive: selectedTab == cart,
              onPressed: () => onItemPressed(context, cart),
              title: 'Carrito',
              selectedIcon: CustomIconData.buy,
            ),
          ),
        ],
      ),
    );
  }
}
