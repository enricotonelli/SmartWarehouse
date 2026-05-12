import 'package:design_system/theme/sw_tokens.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Text field styled per the SmartWarehouse design system:
/// white background, 1px border, 12px radius, yellow-dark focus border with
/// soft yellow ring.
class SwTextField extends StatefulWidget {
  const SwTextField({
    required this.controller,
    this.label,
    this.placeholder,
    this.error,
    this.keyboardType,
    this.obscure = false,
    this.suffix,
    this.trailingAction,
    super.key,
  });

  final TextEditingController controller;
  final String? label;
  final String? placeholder;
  final String? error;
  final TextInputType? keyboardType;
  final bool obscure;
  final Widget? suffix;
  final Widget? trailingAction;

  @override
  State<SwTextField> createState() => _SwTextFieldState();
}

class _SwTextFieldState extends State<SwTextField> {
  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final hasError = widget.error != null && widget.error!.isNotEmpty;
    final isFocused = _focusNode.hasFocus;
    final borderColor = hasError
        ? SwColors.stockOut
        : isFocused
            ? SwColors.yellowDark
            : SwColors.border;
    final boxShadow = isFocused && !hasError
        ? [const BoxShadow(color: Color(0x40FBC400), blurRadius: 0, spreadRadius: 3)]
        : <BoxShadow>[];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null || widget.trailingAction != null)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (widget.label != null)
                Text(widget.label!, style: SwText.label())
              else
                const SizedBox.shrink(),
              if (widget.trailingAction != null) widget.trailingAction!,
            ],
          ),
        const SizedBox(height: 6),
        AnimatedContainer(
          duration: const Duration(milliseconds: 120),
          decoration: BoxDecoration(
            color: SwColors.white,
            border: Border.all(color: borderColor),
            borderRadius: BorderRadius.circular(SwRadii.input),
            boxShadow: boxShadow,
          ),
          child: TextField(
            controller: widget.controller,
            focusNode: _focusNode,
            obscureText: widget.obscure,
            keyboardType: widget.keyboardType,
            style: GoogleFonts.inter(fontSize: 15, color: SwColors.text),
            decoration: InputDecoration(
              hintText: widget.placeholder,
              hintStyle: GoogleFonts.inter(fontSize: 15, color: SwColors.text3),
              contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
              border: InputBorder.none,
              suffixIcon: widget.suffix,
            ),
          ),
        ),
        if (hasError) ...[
          const SizedBox(height: 6),
          Text(
            widget.error!,
            style: GoogleFonts.inter(fontSize: 12, color: SwColors.stockOut),
          ),
        ],
      ],
    );
  }
}
