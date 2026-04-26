import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../domain/entities/dns_resolver_entity.dart';

class LookupAppBar extends StatelessWidget {
  final ResolverType activeResolverType;

  const LookupAppBar({
    super.key,
    required this.activeResolverType,
  });

  @override
  Widget build(BuildContext context) {
    final isSecure = activeResolverType == ResolverType.doh || activeResolverType == ResolverType.dot;

    return SliverAppBar(
      expandedHeight: 180,
      floating: false,
      pinned: true,
      backgroundColor: Theme.of(context).colorScheme.surface,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsets.only(left: 24, bottom: 16),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Host Hunter',
              style: GoogleFonts.outfit(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(width: 8),
            _SecurityBadge(isSecure: isSecure),
          ],
        ),
        background: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Theme.of(context).colorScheme.primary,
                Theme.of(context).colorScheme.secondary,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                right: -20,
                bottom: -20,
                child: Icon(
                  isSecure ? Icons.lock_outline : Icons.warning_amber_rounded,
                  size: 150,
                  color: Colors.white10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SecurityBadge extends StatelessWidget {
  final bool isSecure;

  const _SecurityBadge({required this.isSecure});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: isSecure ? Colors.green.withValues(alpha: 0.2) : Colors.amber.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isSecure ? Colors.green : Colors.amber,
          width: 0.5,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            isSecure ? Icons.verified_user : Icons.warning_rounded,
            size: 10,
            color: isSecure ? const Color(0xFFFFD700) : Colors.amber, // Gold for Secure icon
          ),
          const SizedBox(width: 4),
          Text(
            isSecure ? 'SECURE' : 'UNENCRYPTED',
            style: GoogleFonts.inter(
              fontSize: 8,
              fontWeight: FontWeight.bold,
              color: isSecure ? Colors.green : Colors.amber,
            ),
          ),
        ],
      ),
    );
  }
}
