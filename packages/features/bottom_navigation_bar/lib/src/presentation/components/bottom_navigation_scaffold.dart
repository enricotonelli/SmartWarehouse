import 'package:bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class BottomNavigationScaffold extends StatelessWidget {
  const BottomNavigationScaffold({
    required this.selectedTab,
    required this.child,
    this.appBar,
    this.alignment,
    this.scrollable = true,
    this.showBottomNavigationBar = true,
    super.key,
  });

  final NavigationBarOption selectedTab;
  final Widget child;
  final bool scrollable;
  final bool showBottomNavigationBar;
  final AlignmentGeometry? alignment;
  final PreferredSizeWidget? appBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: SwColors.white,
      body: SafeArea(
        bottom: false,
        child: scrollable
            ? SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                physics: const ClampingScrollPhysics(),
                child: Align(alignment: alignment ?? AlignmentDirectional.topStart, child: child),
              )
            : Align(alignment: alignment ?? AlignmentDirectional.topStart, child: child),
      ),
      bottomNavigationBar: showBottomNavigationBar
          ? BottomNavigationBarFeatureBuilder.build(context, selectedTab)
          : null,
    );
  }
}
