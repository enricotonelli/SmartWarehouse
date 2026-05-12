import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

/// 40×40 square icon button on the surface color with a 12px radius. Optional
/// yellow dot in the top-right corner (used for notification indicator + cart
/// count badge).
class SwIconButton extends StatelessWidget {
  const SwIconButton({
    required this.icon,
    required this.onPressed,
    this.badge,
    this.tooltip,
    super.key,
  });

  final IconData icon;
  final VoidCallback? onPressed;
  final Widget? badge;
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip ?? '',
      child: Material(
        color: SwColors.surface,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(12),
          child: SizedBox(
            width: 40,
            height: 40,
            child: Stack(
              children: [
                Center(child: Icon(icon, size: 20, color: SwColors.text)),
                if (badge != null)
                  Positioned(top: -4, right: -4, child: badge!),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SwBadge extends StatelessWidget {
  const SwBadge({required this.count, super.key});
  final int count;

  @override
  Widget build(BuildContext context) {
    if (count <= 0) return const SizedBox.shrink();
    final label = count > 99 ? '99+' : '$count';
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      constraints: const BoxConstraints(minWidth: 18, minHeight: 18),
      decoration: BoxDecoration(
        color: SwColors.yellow,
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: SwColors.white, width: 2),
      ),
      alignment: Alignment.center,
      child: Text(
        label,
        style: SwText.body(size: 10, weight: FontWeight.w700, color: SwColors.text),
      ),
    );
  }
}
