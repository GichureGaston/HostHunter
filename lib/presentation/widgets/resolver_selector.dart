import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../domain/entities/dns_resolver_entity.dart';

class ResolverSelector extends StatelessWidget {
  final List<DnsResolverEntity> resolvers;
  final DnsResolverEntity selectedResolver;
  final ValueChanged<DnsResolverEntity> onChanged;

  const ResolverSelector({
    super.key,
    required this.resolvers,
    required this.selectedResolver,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'RESOLVER',
          style: GoogleFonts.inter(
            color: Colors.white54,
            fontSize: 12,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.1,
          ),
        ),
        const SizedBox(height: 12),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: const Color(0xFF1E293B),
            borderRadius: BorderRadius.circular(12),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<DnsResolverEntity>(
              value: selectedResolver,
              isExpanded: true,
              dropdownColor: const Color(0xFF1E293B),
              items: resolvers.map((resolver) {
                return DropdownMenuItem(
                  value: resolver,
                  child: Text(
                    resolver.name,
                    style: GoogleFonts.inter(color: Colors.white),
                  ),
                );
              }).toList(),
              onChanged: (value) {
                if (value != null) onChanged(value);
              },
            ),
          ),
        ),
      ],
    );
  }
}
