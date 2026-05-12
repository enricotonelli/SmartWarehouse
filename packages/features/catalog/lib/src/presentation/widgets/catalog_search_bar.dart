import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CatalogSearchBar extends StatelessWidget {
  const CatalogSearchBar({
    required this.controller,
    required this.onChanged,
    super.key,
  });

  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: SwColors.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const Icon(Icons.search, color: SwColors.text3, size: 18),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              controller: controller,
              onChanged: onChanged,
              style: GoogleFonts.inter(fontSize: 15, color: SwColors.text),
              decoration: InputDecoration(
                isCollapsed: true,
                border: InputBorder.none,
                hintText: 'Buscar por nombre o SKU…',
                hintStyle: GoogleFonts.inter(fontSize: 15, color: SwColors.text3),
              ),
            ),
          ),
          if (controller.text.isNotEmpty)
            GestureDetector(
              onTap: () {
                controller.clear();
                onChanged('');
              },
              child: const Icon(Icons.close, color: SwColors.text3, size: 18),
            )
          else
            const Icon(Icons.tune, color: SwColors.text3, size: 18),
        ],
      ),
    );
  }
}
