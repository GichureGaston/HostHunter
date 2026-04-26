import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LookupSearchBar extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSearch;

  const LookupSearchBar({
    super.key,
    required this.controller,
    required this.onSearch,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        style: GoogleFonts.inter(color: Colors.white),
        decoration: InputDecoration(
          hintText: 'Enter domain (e.g. google.com)',
          hintStyle: GoogleFonts.inter(color: Colors.white38),
          prefixIcon: const Icon(Icons.search, color: Color.fromARGB(255, 51, 190, 214)),
          suffixIcon: IconButton(
            icon: const Icon(Icons.arrow_forward, color: Colors.white),
            onPressed: onSearch,
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
        ),
        onSubmitted: (_) => onSearch(),
      ),
    );
  }
}
